=begin 
Create a method that takes two integers as arguments.
The first argument is a count, and the second is the first number of a sequence that your method will create. 
The method should return an Array that contains the same number of elements as the count argument,
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty list should be returned.
=end

# ipnut is two integers. the first int is the count. the second is the the first number of the sequence.. output is array. 
# problem – return an array with the length == the first integer passed in. 
# The array starts with the second int and each object in the array is a multiple of the starting number. 
#   if count == 0 return an empty array. 
#   initialise results array
  
#   for number in range from 1 to the count
#   add number * start to results array.
#   return results arra

def sequence(count, start)
  results = []
  return results if count == 0 
  for num in 1..count do 
    results <<  num * start 
  end 
  results
end 


p sequence(5, 1)
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []






def sequence num1, num2 
  results = []
  
  for x in 1..num1 
    results << num2 * x 
  end 
    results
end 

