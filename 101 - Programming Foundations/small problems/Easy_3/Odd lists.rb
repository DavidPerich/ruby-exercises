require 'pry'

# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
# # The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# input – an array 
# output – array that contains every element at an even index positoin – 0, 2

# define method one arguement 
# select from initial array by checking index position is even 
# return array 

def oddities(array)
  array.select {|x| array.index(x).even?}
end 


def oddities(array)
  result = Array.new
  array.each_with_index do |item, index|
    result << item if index.even?
  end
  result
end

p oddities([2, 3, 4, 5, 6,])
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
















# def oddities(array)
#   array.select { |num| array.index(num) % 2 == 0 }
# end
