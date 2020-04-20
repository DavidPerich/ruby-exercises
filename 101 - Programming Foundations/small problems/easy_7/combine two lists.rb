=begin
Write a method that combines two Arrays passed in as arguments,
and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

=end 

# input – two arrays. output is one array. 
# array are non-empty and the arrays of same number of elements. 
#   initialise a results array 
#   start a loop 
#   unshift the first value of the arr1 array 
#   unshift the first value of the arr2 array 
#   break if arr2.size == 0 
#   or go back to the start of the loop
# end the loop 
# return the results array. 

def interleave(arr1, arr2)
  results = []
  until arr2.size == 0 
    results << arr1.shift
    results << arr2.shift 
  end
  results
end 

# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end 




p interleave([1, 2, 3], ['a', 'b', 'c'])

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']













def interleave  array1, array2 
  count = 0 
  new_array = []
  until count == array1.size do 
    new_array << array1[count]
    new_array << array2[count]
    count += 1
  end
  new_array
end 



=begin 
their solution 

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

=end 