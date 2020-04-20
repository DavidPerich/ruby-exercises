# Enumerable#one? processes elements in a collection by passing each element value to a block that is provided in the method call. 
# If the block returns a value of true for exactly one element, then #one? returns true. Otherwise, #one? returns false.
# Note in particular that #one? will stop searching the collection the second time the block returns true.

# Write a method called one? that behaves similarly for Arrays. 
# It should take an Array as an argument, and a block.
# It should return true if the block returns true for exactly one of the element values. Otherwise, it should return false.

# Your method should stop processing elements of the Array as soon as the block returns true a second time.

# If the Array is empty, one? should return false, regardless of how the block is defined.

# exactly one element needs to be true 
# stops searching if it encounters a second value
# if empty should return false 
  
def one?(array)
  counter = 0
  array.each do |item|
    counter += 1 if yield(item)
    return false if counter == 2 
  end 
  counter == 1 
end
  

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }   == false
p one?([]) { |value| true }   == false            