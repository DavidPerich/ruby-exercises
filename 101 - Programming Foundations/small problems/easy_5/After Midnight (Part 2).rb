
=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.
Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:
=end 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# input a string. output a integer between the range of 0..1439.
# two methods both return the how far (in minutes) the arguement passed in is  from midnight (one method is forward, one back)

# after midnight. – midnight represents 0. 12.01 would return 1 12.02 would return 2 etc. 
# need to conver the string into hours and a minutes 
# find out how many total minutes 
require 'pry'

def after_midnight(time_string)
  return 0 if ["24:00", "00:00"].include? time_string
  hours, minutes = time_string.split(':')
  hours.to_i * MINUTES_PER_HOUR + minutes.to_i
end 


def before_midnight(time_string)
  return 0 if ["24:00", "00:00"].include? time_string
  hours, minutes = time_string.split(':')
  MINUTES_PER_DAY - ((hours.to_i * MINUTES_PER_HOUR) + minutes.to_i)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0





# def after_midnight (time)
#   array = time.split ":"
#   array.map! {|x| x.to_i} 
#   if array == [24, 0]
#     0 
#   else 
#     minutes = (array[0] * MINUTES_PER_HOUR) + array[1]
#   end
# end 

# def before_midnight time
#   array = time.split ":"
#   array.map! {|x| x.to_i} 
#   if array == [0, 0]
#     0 
#   else 
#     minutes = MINUTES_PER_DAY - ((array[0] * MINUTES_PER_HOUR) + array[1])
#   end
# end

  
# =begin

# theirs 

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end
# =end 
  



# p after_midnight('00:00') == 0
# p before_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p before_midnight('12:34') == 686
# p after_midnight('24:00') == 0
# p before_midnight('24:00') == 0