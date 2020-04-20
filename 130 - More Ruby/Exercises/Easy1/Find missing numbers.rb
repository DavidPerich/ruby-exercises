# Write a method that takes a sorted array of integers as an argument,
# and returns an array that includes all of the missing integers (in order) 
# between the first and last elements of the argument.

# Examples:

# input = array 

# output array 
# sorted array means that first value is lowest and last value is highest. 
# full array from the lowest to the highest minus the original array will return the values that are missing. 
require 'pry'

def missing(array)
  full_array = (array[0]..array[-1]).to_a
  full_array - array
end 

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []