=begin Write a method that takes an Array as an argument,
and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.


=end 

# input is an array. returns a mutated version of the original array object which has its elements reversed in place. 

def reverse! array
  array.sort_by! {|x| array.reverse.index(x)}
end




list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id
p result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p  == ["abc"]

list = []
reverse!(list) # => []
p list == []


















def reverse! list 
  new_list = []
  until list == [] 
    new_list << list.pop
  end 
  list = new_list 
end 



