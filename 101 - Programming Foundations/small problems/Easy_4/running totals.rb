# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# Examples:


# input array. output array of same length. 
# problem
# initialise results array 
# define method with arguement.
# use each to iterate through the arguement and add results.sum to the areguemtn - add this to the results array as new element 
# return results .


# def running_total(array)
#   results = []
#   array.each do |x|
#     results == [] ? results <<  x : results << x += results[-1]
#   end 
#   p results
# end 
require 'pry'

def running_total(array)
  results = []
  array.inject(0) do |sum, n|
    results << sum += n 
    sum
  end
  results
end 




p running_total([2, 5, 13]) # == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []












# def running_total array 
#   new_array = []
#   sum = 0 
#   array.map do |x|
#   new_array <<  sum += x 
#   end 
#   new_array
# end 
    

