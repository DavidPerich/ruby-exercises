=begin
Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.
=end

# input – two arguements – array, an object (could be lots) - output is a boolean. 

# define method that takes two arguements, array and arg
# array.find – does the item in the array == the arguement. 

def include?(array, arg)
  array.any? {|x| x == arg}
end 

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false



















# def include? array, element 
#   array.any? {|x| x == element}
# end 


