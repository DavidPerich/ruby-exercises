
=begin
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:
=end 

# input is an integer. out put is integer.
# call digits on num
#   call join on return value ^^ 
#   cal to_i on return value ^^ 

def reversed_number(num)
  num.digits.join.to_i
end 


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1















def reversed_number num
  num.to_s.reverse.to_i
end 


