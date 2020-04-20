# iven the following data structure, and without using the Array#to_h method, 
# write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# input is an array of sub arrays. output is a hash
# initialise a results hash 
# iterate through the array with each
# for each sub array. The object in index one becomes the key and the value is the rest of the array. 

hash = {}
arr.each do |sub_array|
  hash[sub_array[0]] = sub_array[1..-1]
end

p hash