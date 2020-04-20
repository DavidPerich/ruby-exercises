# Write a program that cleans up user-entered phone numbers so that they can be sent as SMS messages.

# The rules are as follows:

# If the phone number is less than 10 digits assume that it is bad number
# If the phone number is 10 digits assume that it is good
# If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
# If the phone number is 11 digits and the first number is not 1, then it is a bad number
# If the phone number is more than 11 digits assume that it is a bad number
require 'pry'
class PhoneNumber
  INVALID = '0000000000'
  
  attr_reader :number
  
  def initialize(number)
   @number = validate(number.gsub(/\W/,""))
  end
  
  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..-1]}"
  end
  
  def area_code
    @number.slice(0..2)
  end
  
  def validate(number)
    return INVALID if number.match(/[a-z]/i)
    case number.size
    when 10 then number
    when 11 then number[0].match("1") ? number.slice(1..-1) : '0000000000'
    else 
      INVALID
    end
  end
end 