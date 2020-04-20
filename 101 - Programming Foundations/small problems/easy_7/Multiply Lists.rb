=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of each pair of 
numbers from the arguments that have the same index.
You may assume that the arguments contain the same number of elements.
=end

# input is an array of integers. returns a new array. 
# problem. At each index in hte array multiply with the same index in the other array arguement. 

#   intialise a results array
#   then iterate with the index of the first array 
#   each time add arr1 index value * arr2 index to the results array 
  
#   return the array 

def multiply_list(arr1, arr2)
  results = []
  arr1.each_with_index {|num, index| results << arr1[index] * arr2[index]}
  results
end 


p multiply_list([3, 5, 7], [9, 10, 11])

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]













# ## this was my original solution!!!
# def multiply_list array1, array2 
#   new_array =[]
#   array1.each_index do  |index|
#   new_array << array1[index] * array2[index]
# end 
#   new_array
# end 
# =end
  
# # ## one line solution using zip 

# # def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map{|a, b| a * b}
# end


# p multiply_list([3, 5, 7], [9, 10, 11])

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]