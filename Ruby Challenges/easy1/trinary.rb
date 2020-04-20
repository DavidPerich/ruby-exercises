# Write a program that will convert a trinary number, represented as a string (e.g. '102012'), to its decimal equivalent using first principles (without using an existing method or library that can work with numeral systems).

# Trinary numbers can only contain three symbols: 0, 1, and 2. Invalid trinary entries should convert to decimal number 0.

# The last place in a trinary number is the 1's place. The second to last is the 3's place, the third to last is the 9's place, etc.

# # "102012"
#     1       0       2       0       1       2    # the number
# 1*3^5 + 0*3^4 + 2*3^3 + 0*3^2 + 1*3^1 + 2*3^0    # the value
#   243 +     0 +    54 +     0 +     3 +     2 =  302
# Test suite:

# Trinary.new('10').to_decimal

# invalid numbers convert to 0. 

require 'pry'


class Trinary
  def initialize(string)
    @string = string
    @nums = string.to_i.digits
  end 
  
  def to_decimal 
    return 0 if @string.match(/[3-9]|[a-z]/)
    @nums.map.with_index {|item, index| item  * (3 ** index)}.sum
  end 

end

p Trinary.new('100').to_decimal























# class Trinary 
  
#   def initialize(string)
#     # binding.pry
#     @digits = string.to_i.to_s == string ? string.to_i.digits : 0
#   end
  
#   def to_decimal
#     return @digits if @digits == 0 
#     @digits.map!.with_index {|num,index| num * 3 ** index}.sum
#   end
# end 