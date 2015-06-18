module RDL
  class Wrap
    def self.wrappable?(klass)
      return (not (klass.name =~ /^RDL::/))
    end

    def self.wrapped?(klass, meth)
      klass = Kernel.const_get klass unless klass.class == Class
      klass.instance_methods.include? (wrapped_name(klass, meth))
    end
  
    def self.add_contract(klass, meth, kind, val)
      klass = Kernel.const_get klass unless klass.class == Class
      meth = meth.to_sym
      klass.class_eval <<-RUBY, __FILE__, __LINE__
        # Another way to do this would be to have a default new array
        # whenever the hash is accessed, but that might cause a lot of
        # allocation on checks of wrapped methods
        @@__rdl_contracts = {} unless self.class_variables.include? :contracts
        @@__rdl_contracts[meth] = {} unless @@__rdl_contracts[meth]
        @@__rdl_contracts[meth][kind] = [] unless @@__rdl_contracts[meth][kind]
        @@__rdl_contracts[meth][kind] << val
RUBY
    end
    
    # [+klass+] may be a Class, String, or Symbol
    # [+method+] may be a String or Symbol
    #
    # Wraps klass#method to check contracts and types. Does not rewrap
    # if already wrapped. Classes containing wrapped methods may
    # include three fields for types and contracts: @@__rdl_meth_pre,
    # @@__rdl_meth_post, and @@__rdl_meth_type. (These names are defined
    # by contract_field_name.)  Each of these fields contains an array
    # of precondition contracts, postcondition contracts, and method
    # types. These are treated as AndContracts (for pre and post) and
    # IntersectionTypes (for type).

    def self.wrap(klass, meth)
      klass = Kernel.const_get klass unless klass.class == Class
      meth_old = wrapped_name(klass, meth) # meth_old is a symbol
      return if klass.instance_methods.include? meth_old  # Don't rewrap
      
      klass.class_eval <<-RUBY, __FILE__, __LINE__
      alias_method meth_old, meth
      @@__rdl_contracts = {} unless self.class_variables.include? :contracts
      def #{meth}(*args, &blk)
#        puts "Intercepted #{meth_old}(\#{args.join(", ")}) { \#{blk} }"
        if @@__rdl_contracts[#{meth.inspect}] && @@__rdl_contracts[#{meth.inspect}][:pre] then
          RDL::Contract::AndContract.check_array(@@__rdl_contracts[#{meth.inspect}][:pre],
                                                 *args, &blk)
        end
        ret = send(#{meth_old.inspect}, *args, &blk)
        if @@__rdl_contracts[#{meth.inspect}] && @@__rdl_contracts[#{meth.inspect}][:post] then
          RDL::Contract::AndContract.check_array(@@__rdl_contracts[#{meth.inspect}][:post],
                                                 ret, *args, &blk)
        end
        return ret
      end
RUBY
    end

    def self.pre(klass, meth, contract)
      wrap(klass, meth)
      add_contract(klass, meth, :pre, contract)
    end

    def self.post(klass, meth, contract)
      wrap(klass, meth)
      add_contract(klass, meth, :post, contract)
    end
    
    private

    def self.wrapped_name(klass, meth)
      # TODO: []_old is not a valid method name. Need to translate []
      # and other special method names, and ? and !, specially
      "__rdl_#{meth.to_s}_old".to_sym
    end

  end
end
