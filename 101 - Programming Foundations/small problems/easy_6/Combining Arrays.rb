=begin 
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

=end
def merge(array1, array2) 
  array1 | array2 
end 



p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1, 3, 5], [3, 6, 9]) 
















def ls_merge array1,array2
  array1 | array2 
end 

p ls_merge([1, 3, 5], [3, 6, 9])

  

def merge array1, array2 
  new_array = array1 
  array2.each {|x| new_array << x}
  new_array.uniq 
end 
