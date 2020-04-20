
# # Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# # The array will never be empty and the numbers will always be positive integers.

# # Examples:



# input a narray contain integers. return an average of all the numbers in array. no negatives ints or empty arrays

# average == sum of all nums divided by number of numbers. So array.sum / array.length

def average(array)
  array.sum.to_f / array.length
end 


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([1, 20])








# # ––––– 

# def average arr
#   arr.sum / arr.length
# end 

# p average([1,2,4,5,6,1000])