# The Romans were a clever bunch. They conquered most of Europe and ruled it for hundreds of years.
# They invented concrete and straight roads and even bikinis. One thing they never discovered though was the number zero.
# This made writing and dating extensive histories of their exploits slightly more challenging, but the system of numbers they came up with is still in use today.
# For example the BBC uses Roman numerals to date their programmes.

# The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these letters have lots of straight lines and are hence easy to hack into stone tablets).

# 1  => I
# 10  => X
# 7  => VII
# There is no need to be able to convert numbers larger than about 3000. (The Romans themselves didn't tend to go any higher)

# Wikipedia says: Modern Roman numerals ... are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero.

# To see this in practice, consider the example of 1990. In Roman numerals 1990 is MCMXC:

# 1000=M
# 900=CM
# 90=XC
# 2008 is written as MMVIII:

# 2000=MM
# 8=VIII
require 'pry'

class Integer 
  ROMANS = {1 => 'I', 4 => 'IV',  5 => 'V', 9 => "IX", 10 => 'X',40 => 'XL',
  50 => 'L',90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D',900 => 'CM', 1000 => 'M'}
  
  def to_roman
    array = self.digits 
    result =""
    # iterate through the array. 
    # if there is a match for that position in the hash then it is just that value. 
    # If there isn't then it the remaimder
      
      
  end 
end

p 4.to_roman

# 7 / 5 , 

# use digits to get digits of the calling object in an array. 
# first element is in ones position. select the last value that it is divisible by
# for second element in the array need to times by index to get its value. thsi gets added before  
# 












# def to_roman   
#     value = self
#     result = ""
#     until value.zero? 
#       possible_numerals = ROMANS.select {|num, roman| value / num > 0 }
#       factor, value = value.divmod(possible_numerals.max[0])
#       result << possible_numerals.max[1] * factor 
#     end
#     result
#   end 