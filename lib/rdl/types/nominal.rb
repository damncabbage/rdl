require_relative 'type'

module RDL::Type
  class NominalType < Type
    attr_reader :name # string
    
    @@cache = {}

    class << self
      alias :__new__ :new
    end

    def self.new(name)
      name = name.to_s
      return NilType.new if name == "NilClass"
      t = @@cache[name]
      return t if t
      t = self.__new__ name
      return (@@cache[name] = t) # assignment evaluates to t
    end

    def initialize(name)
      @name = name
    end

    def eql?(other)
      self == other
    end

    def ==(other)
      return (other.instance_of? self.class) && (other.name == @name)
    end

    def hash # :nodoc:
      return @name.hash
    end

    def to_s
      return @name
    end

    def klass
      @klass = RDL::Util.to_class(name) unless @klass
      return @klass
    end

    def <=(other)
      return true if other.instance_of? TopType
      return klass.ancestors.member?(other.klass) if other.instance_of? NominalType
#      return self <= other.base if other.instance_of? GenericType # raw subtyping not allowed
      return false
    end

    def member?(obj, *args)
      t = RDL::Util.rdl_type obj
      return t <= self if t
      return true if obj.nil?
      return obj.is_a? klass
    end
    
    def instantiate(inst)
      return self
    end
  end
end
