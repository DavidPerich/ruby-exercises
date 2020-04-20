# Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is greater than 0.

# Examples:

# input is an int. output is an array. 
# range of numbers from 1 to the int arguement call to_a on that range. 

def sequence(int)
  (1..int).to_a
end

require 'pry'


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(-1) 








