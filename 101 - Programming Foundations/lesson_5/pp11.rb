# Given the following data structure use a combination of methods, including either the select or reject method, 
# to return a new array identical in structure to the original but containing only the integers that are multiples of 3.



# input is an array. output is an array with the same structure (this means same numbre of sub arrays), but subarrays can only contain multiples of three.

# map to keep the same array 
# select to keep only the values. 

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.map do |sub_array|
  sub_array.select {|int| int % 3 == 0 }
end

p arr