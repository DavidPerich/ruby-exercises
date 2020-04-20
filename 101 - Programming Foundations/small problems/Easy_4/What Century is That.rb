# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:

# Understanding problem 
# input a int 
# output string 
# 00 is not a century

# psuedo
#   define method that accepts 1 arg
#   if year ends in 0 then return century =  arg divided by 100
#   else century = year / 100
#     convert century to string 
    
#   case for century 
#   when ends with 1 then add "st"
#     when 2 add "nd" 
#       etc 
require 'pry'

def century(year)
  # binding.pry 
  century = year.to_s.match(/00$/) ? (year/100).to_s : (year / 100 + 1).to_s
  # century = year.digits[0-1] == 0 ? (year/100).to_s : (year / 100 + 1).to_s
  return century << 'th' if ['11', '12', '13'].include? century[-2..-1]
  case century[-1]
  when "1" then century << 'st'
  when '2' then century << 'nd' 
  when '3' then century << 'rd'
  else century << 'th' 
  end
  century
end 




p century(2000) == '20th'
p century(2010) == '21st'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'




















# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end