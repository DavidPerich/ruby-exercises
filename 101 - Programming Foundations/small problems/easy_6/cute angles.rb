=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees 
and returns a String that represents that angle in degrees,minutes and seconds.
You should use a degree symbol (°) to represent degrees, a single quote (')
to represent minutes, and a double quote (") to represent seconds.
A degree has 60 minutes, while a minute has 60 seconds.
=end

# input a floating point number. Output a string formatted in a particular way. 
# figure out how to get the degrees, minutes and seconds values. 
# combine them into a string with corrosponding values. 
# 


MINUTE = 60
DEGREE = 60
DEGREE_REP = "\xC2\xB0"

def dms(num)
  degrees = num.truncate(0)
  minutes = ((num - degrees) * MINUTE).truncate(0)
  seconds = num - degrees - minutes
  p degrees
  p minutes
  
end 


puts dms(93.034773) 
# p dms(93.034773) == %(93°02'05")
# p dms(76.73) 
p dms(254.6) 
# p dms(93.034773)
# p dms(0)
# p dms(360) 
# p dms(360) 














# MINUTES_PER_DEGREE = 60 
# SECONDS_PER_MINUTE = 60 
# def dms angle 
#   array = angle.divmod 1
#   degrees = array[0]
#   minutes, seconds = (array[1] * 60).divmod 1
#   format("%d°%02d'%02d\"", degrees, minutes.to_i, seconds)
# end 

# puts dms(93.34773) 
# p dms(76.73) 
# p dms(254.6) 
# p dms(93.034773)
# p dms(0)
# p dms(360) 
# p dms(360) 

