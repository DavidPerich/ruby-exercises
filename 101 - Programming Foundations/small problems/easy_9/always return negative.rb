=begin 
Write a method that takes a number as an argument.
If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.
=end 

# input is an integer. returns an integer 
# Problem – if integer is > 0 return negative of that intger
# else return integer
  
def negative(num)
  num > 0 ? -num : num
end 

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  











def sequence num 
  (1..num).to_a
end 
