# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]




# input is an array of hashes. output is same array, but with each hash value increased by 1. 

# Problem: access each hash value. 
array  = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
results = array.map do |hash| 
  p hash.each_value {|value| value += 1}
end

p results