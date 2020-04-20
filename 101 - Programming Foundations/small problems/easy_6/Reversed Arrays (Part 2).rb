=begin Write a method that takes an Array as an argument,
and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

Problem 

pop of the last element to a new array 
cycle through 
return new array. 
=end 

def reverse! list 
  new_list = []
  list.each {|x| new_list << x}
end 



list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id ==  result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!(list) # => []
list == []