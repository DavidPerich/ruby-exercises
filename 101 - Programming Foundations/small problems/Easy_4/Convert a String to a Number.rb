# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
# # String#to_i and the Integer constructor (Integer()) behave similarly. 
# # In this exercise, you will create a method that does the same thing.

# # Write a method that takes a String of digits, and returns the appropriate number as an integer.
# # You may not use any of the methods mentioned above.

# # For now, do not worry about leading + or - signs, nor should you worry about invalid characters;
# assume all characters will be numeric.

# # You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc.
# Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Examples


# input – a string. output an integer. 
# I nede to work with each character. 

# def method 1 arguement 
# initialise digits hash which contains each number in string form as a key and its integer as a value
# create an array of the characters 
# transofrm the array with map those strings to their matching hash interget. 
# iterate through the array of intergets and the value by its position in the internet 


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
array = string.chars
array.map! {|num| DIGITS[num]}

result = 0 
array.each {|digit| p result =  10 * result + digit}
end 




p string_to_integer('4321') == 4321
 p string_to_integer('570') == 570














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




## proper way – using hashes 

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

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