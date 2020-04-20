# The Luhn formula is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.

# The formula verifies a number against its included check digit, which is usually appended to a partial number to generate the full number. 
# This number must pass the following test:

# Counting from rightmost digit (which is the check digit) and moving left, double the value of every second digit.
# For any digits that thus become 10 or more, subtract 9 from the result.
# 1111 becomes 2121.
# 8763 becomes 7733 (from 2×6=12 → 12-9=3 and 2×8=16 → 16-9=7).
# Add all these digits together.
# 1111 becomes 2121 sums as 2+1+2+1 to give a checksum of 6.
# 8763 becomes 7733, and 7+7+3+3 is 20.
# If the total (the checksum) ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to the Luhn formula; else it is not valid.
# So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).

# Write a program that, given a number

# Can check if it is valid per the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as valid.
# Can return the checksum, or the remainder from using the Luhn method.
# Can add a check digit to make the number valid per the Luhn formula and return the original number plus that digit. 
# This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".
# About Checksums:


# manipulate every second number(starting from the right)and double it. If it result is greater than 10 - 9. 
#work with an array so can use map. reverse_each.map function

require 'pry'

class Luhn 
  attr_accessor :num
  
  def initialize(num)
    @num = num.digits 
  end
  
  def self.create(number)
    new_base = number * 10
    new(new_base).valid? ? new_base : new_base + (10 - new(new_base).checksum % 10)
  end
  
  def addends 
    result = @num.dup
    result.map!.with_index do |value, index|
      index.odd? ? convert(value) : value 
    end
      result.reverse
  end 
  
  def convert(value)
    value = value * 2 
    value > 10 ? value - 9 : value 
  end
  
  def checksum 
    addends.sum
  end 
  
  def valid? 
    checksum % 10 == 0
  end
end

p Luhn.create(873_956)