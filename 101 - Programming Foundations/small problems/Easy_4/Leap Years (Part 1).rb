# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
# unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input, 
# and returns true if the year is a leap year, or false if it is not a leap year.

#divisble by 4 
#unless divisible by 100 
#unless it is divisible by 400 

# input a int
# output boolean

# define method wiht 1 arg
# if divisible by 400 then true
# if divisible by 100 false
# if divisible by 4 true
# end 

def leap_year?(year)
  if year < 1752 
    return true if year % 4 == 0
    false 
  else 
    return true if year % 400 == 0
    return false if year % 100 == 0
    return true if year % 4 == 0
    false
  end
end 

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true


  






# def leap_year? year
#   if year % 400 == 0 
#     true 
#   elsif year % 100 == 0 
#     false 
#   else 
#     year % 4 == 0 
#   end 
# end 

