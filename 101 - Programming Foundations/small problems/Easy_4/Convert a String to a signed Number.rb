# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

# Examples

# input stirng. output int. 
# check if first value is + or - 
# if no then string can just be passed into original method. 
#   if yes then unshift sign and caputre it 
# conditional 
# if sign = - then return result of string to int multiplied by -1 should get result 
# else 




DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}


def string_to_integer(string)
array = string.chars
array.map! {|num| DIGITS[num]}

result = 0 
array.each {|digit| result =  10 * result + digit}
result
end

def string_to_signed_integer(string)
  if string[0] == '-'
    string[0] = "" 
    string_to_integer(string) * -1
  elsif string[0] == '+'
    string[0] = "" 
    string_to_integer(string)
  else 
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') == 100






















=begin
def string_to_integer string 
  array = *(1..10)
  string = string.chars
  array.select! do |num| 
    if string.include? num.to_s 
      num 
    else 
    end 
  end 
  array.join
end 
=end 




# ## proper way – using hashes 

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# require 'pry'
# def string_to_signed_integer(string)
#   if string[0] == "-"
#     string[0] = ""
#     -string_to_integer(string)
#   elsif string[0] == "+"
#     string[0] = ""
#     string_to_integer(string)
#   else 
#     string_to_integer(string)
#   end 
# end


# p string_to_signed_integer('4321')
# p string_to_signed_integer('-4321')
# p string_to_signed_integer('+100')


=begin
Their solution. It uses string[1..-1] to get all values at the index from the second value to the last value. 

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

=end