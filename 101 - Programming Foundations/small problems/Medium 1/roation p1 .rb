=begin 
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.
=end 

# input is an array. output is an array. 

# rules – original array should not be modified. 
# problem - return a new array that has moved the first element from the original array to the last index position. 

def rotate_array(array)
  array.slice(1..-1) << array.slice(0)
end 



p rotate_array([7, 3, 5, 2, 9, 1])
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]     












# def rotate_array array 
#   first, second = array.take(1), array.slice(1..-1)
#   second << first 
#   second.flatten
# end 

# =begin
# Their's was a lot simplier 
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# =end 

