
=begin
The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.
=end 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

input: num. output string (with the format of 24 hour clock.)

find the number of hours that have passed 
find the number of minutes that have passed. 


def time_of_day(change)
  total_minutes = change 

end 


p time_of_day(-3) 
p time_of_day(35) 
p time_of_day(-1437) 
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231) 







def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end
  
  
  


