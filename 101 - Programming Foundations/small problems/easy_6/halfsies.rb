=begin
Write a method that takes an Array as an argument, and returns two Arrays that contain the first half and
second half of the original Array, respectively. 
If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
=end


# input is one array. output is two arrays. 
# spit the array in half. If the array is odd then the middle element should have 1 more 

def halvsies(array)
  if array.size == 1 
    array1, array2 = array, []
  elsif array.size == 0
    array1, array2 = [], []
  else 
    array1, array2 = array.slice(0..array.size / 2 - 1), array.slice((array.size / 2   )..array[-1])
  end
end 
p halvsies([1, 5, 2, 4, 3]) 
# p halvsies([])
# p halvsies([5]) 
# p halvsies([1, 2, 3, 4])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# p halvsies([])
















def halvsies(array)
  first_half = array.slice(0, (array.size / 2.0).ceil)
  second_half = array.slice(first_half.size, array.size - first_half.size)
  [first_half, second_half]
end
