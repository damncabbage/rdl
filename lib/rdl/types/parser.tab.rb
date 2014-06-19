#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.11
# from Racc grammer file "".
#

require 'racc/parser.rb'


require_relative 'lexer.rex'

module RDL::Type

class Parser < Racc::Parser

module_eval(<<'...end parser.racc/module_eval...', 'parser.racc', 102)

def initialize()
  @tbool = RDL::Type::UnionType.new (RDL::Type::NominalType.new TrueClass), (RDL::Type::NominalType.new FalseClass)
  @yydebug = true
end

...end parser.racc/module_eval...
##### State transition tables begin ###

racc_action_table = [
    11,    10,    12,    11,    10,    12,    22,    21,     4,    20,
    15,    16,    29,    15,    16,     5,    11,    10,    12,    11,
    10,    12,    11,    10,    12,    11,    10,    12,    11,    10,
    12,    11,    10,    12,    11,    10,    12,    19,    31,    32,
    33,     5,    18,     6,    37 ]

racc_action_check = [
     5,     5,     5,    22,    22,    22,    14,    13,     0,    11,
     5,     5,    21,    22,    22,     0,    31,    31,    31,     4,
     4,     4,    33,    33,    33,    20,    20,    20,    15,    15,
    15,    16,    16,    16,    19,    19,    19,     9,    26,    27,
    28,    29,     6,     1,    34 ]

racc_action_pointer = [
     3,    43,   nil,   nil,    11,    -8,    42,   nil,   nil,    33,
   nil,   -11,   nil,    -6,     4,    20,    23,   nil,   nil,    26,
    17,    -2,    -5,   nil,   nil,   nil,    36,    18,    37,    29,
   nil,     8,   nil,    14,    29,   nil,   nil,   nil ]

racc_action_default = [
   -22,   -22,    -1,    -2,   -22,    -5,   -22,    -3,   -13,   -16,
   -18,   -19,   -20,   -22,    -6,   -22,   -22,   -10,    38,   -22,
   -22,   -11,    -5,    -8,    -9,   -17,   -14,   -22,   -22,   -22,
    -7,   -22,   -21,   -22,   -22,   -15,    -4,   -12 ]

racc_goto_table = [
     7,     2,    13,    27,     3,    28,    25,     1,   nil,   nil,
   nil,    23,    24,   nil,    35,   nil,    26,   nil,   nil,    30,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    26,   nil,    36,
    34 ]

racc_goto_check = [
     4,     2,     5,     9,     3,     6,     8,     1,   nil,   nil,
   nil,     4,     4,   nil,     9,   nil,     4,   nil,   nil,     5,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     4,   nil,     4,
     2 ]

racc_goto_pointer = [
   nil,     7,     1,     4,    -4,    -3,   -16,   nil,   -13,   -17,
   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,    17,   nil,   nil,    14,     8,   nil,
     9 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 24, :_reduce_1,
  1, 24, :_reduce_2,
  2, 26, :_reduce_3,
  6, 25, :_reduce_4,
  0, 28, :_reduce_5,
  1, 28, :_reduce_6,
  3, 28, :_reduce_7,
  2, 30, :_reduce_8,
  2, 30, :_reduce_9,
  1, 30, :_reduce_10,
  0, 29, :_reduce_11,
  3, 29, :_reduce_12,
  1, 27, :_reduce_13,
  1, 32, :_reduce_14,
  3, 32, :_reduce_15,
  1, 31, :_reduce_16,
  3, 31, :_reduce_17,
  1, 33, :_reduce_18,
  1, 33, :_reduce_19,
  1, 33, :_reduce_20,
  4, 33, :_reduce_21 ]

racc_reduce_n = 22

racc_shift_n = 38

racc_token_table = {
  false => 0,
  :error => 1,
  :COMMA => 2,
  :RARROW => 3,
  :OR => 4,
  :DOUBLE_HASH => 5,
  :ASSOC => 6,
  :DOUBLE_COLON => 7,
  :ID => 8,
  :SYMBOL => 9,
  :SPECIAL_ID => 10,
  :STRING => 11,
  :LPAREN => 12,
  :RPAREN => 13,
  :LBRACE => 14,
  :RBRACE => 15,
  :LBRACKET => 16,
  :RBRACKET => 17,
  :QUERY => 18,
  :STAR => 19,
  :LESS => 20,
  :GREATER => 21,
  :EOF => 22 }

racc_nt_base = 23

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "COMMA",
  "RARROW",
  "OR",
  "DOUBLE_HASH",
  "ASSOC",
  "DOUBLE_COLON",
  "ID",
  "SYMBOL",
  "SPECIAL_ID",
  "STRING",
  "LPAREN",
  "RPAREN",
  "LBRACE",
  "RBRACE",
  "LBRACKET",
  "RBRACKET",
  "QUERY",
  "STAR",
  "LESS",
  "GREATER",
  "EOF",
  "$start",
  "entry",
  "method_type",
  "annotation",
  "type_expr",
  "arg_list",
  "block",
  "arg",
  "union_type",
  "type_expr_comma_list",
  "single_type" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.racc', 26)
  def _reduce_1(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 27)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 31)
  def _reduce_3(val, _values, result)
            result = val[1]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 36)
  def _reduce_4(val, _values, result)
            result = RDL::Type::MethodType.new val[1], val[3], val[5]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 40)
  def _reduce_5(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 41)
  def _reduce_6(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 42)
  def _reduce_7(val, _values, result)
     if val[2] then result = val[2].unshift val[0] else val[0] end 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 44)
  def _reduce_8(val, _values, result)
     result = RDL::Type::OptionalType.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 45)
  def _reduce_9(val, _values, result)
     result = RDL::Type::VarargType.new val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 46)
  def _reduce_10(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 49)
  def _reduce_11(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 50)
  def _reduce_12(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 53)
  def _reduce_13(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 56)
  def _reduce_14(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 58)
  def _reduce_15(val, _values, result)
            result = [val[0]] + val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 61)
  def _reduce_16(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 62)
  def _reduce_17(val, _values, result)
     result = RDL::Type::UnionType.new val[0], val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 65)
  def _reduce_18(val, _values, result)
     result = RDL::Type::SymbolType.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 67)
  def _reduce_19(val, _values, result)
          if val[0] == 'nil' then
        result = RDL::Type::NilType.new
      elsif val[0] =~ /^[a-z_]+\w*\'?/ then
        result = RDL::Type::TypeParameter.new(val[0].to_sym)
      else
        result = RDL::Type::NominalType.new val[0]
      end
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 76)
  def _reduce_20(val, _values, result)
          if val[0] == '%any' then
        result = RDL::Type::TopType.new
      elsif val[0] == '%bool' then
        result = @tbool
      else
        fail "Unexpected special type identifier #{val[0]}"
      end
    
    result
  end
.,.,

module_eval(<<'.,.,', 'parser.racc', 85)
  def _reduce_21(val, _values, result)
            if val[0] == "Tuple" then
          result = RDL::Type::TupleType.new(*val[2])
        else
          n = RDL::Type::NominalType.new(val[0])
          result = RDL::Type::GenericType.new(n, *val[2])
        end
    
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser


end
