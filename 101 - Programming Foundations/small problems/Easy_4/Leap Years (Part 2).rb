#divisble by 4 
#unless divisible by 100 
#unless it is divisible by 400 
#if before 1752 any year divisble by 4 is 

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


# def leap_year? year
#   if year < 1752 && year % 4 == 0 
#     true 
#   elsif year % 400 == 0 
#     true 
#   elsif year % 100 == 0 
#     false 
#   else 
#     year % 4 == 0 
#   end 
# end 


p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true
