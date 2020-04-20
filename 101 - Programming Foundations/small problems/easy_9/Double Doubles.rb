# A double number is a number with an even number of digits whose
# left-side digits are exactly the same as its right-side digits.
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Examples:s


# input is an integer. Output is an integer
# Problem – return 2 times the input UNLESS integer isa double number
# Double number def – if you split a double number in half e.g 37 becomes 3 and 7. 334433 becomes 334 and 433 then
# both numbers are the same. 

# Only numbers with a even length can be double numbers. 
# Define method with integer passed in as argueemnt 
# convert to string with to_s
# initialise and assign variable to the size of the string. 
# start conditional 

# if first part of the string == second part of the string 
#   then return original int 
# else return int * 2 


require 'pry'

def twice(num)
  string = num.to_s
  size = string.size 
  return num * 2 if size == 1 
  return num if string.slice(0..((size/2) - 1)) == string.slice((size / 2)..-1)
  num * 2
end 


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10




def twice(number)
  string_number = number.to_s
  center = string_number.size / 2
  left_side = center.zero? ? '' : string_number[0..center - 1]
  right_side = string_number[center..-1]

  return number if left_side == right_side
  return number * 2
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
