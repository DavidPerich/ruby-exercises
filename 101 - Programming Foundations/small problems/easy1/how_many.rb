# Write a method that counts the number of occurrences of each element in a given array.
# take an item in an array 
# compare it to the other items.
# if it is a match add one to the counter for that item
# print all the items and their counters




# def count_occurrences(array)
#  hash = {}
#  array.each do |item|
#   if hash[item] == nil
#    hash[item] = 1 
#   else 
#   hash[item] += 1 
#   end
#  end
#  puts hash
# end 

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
p vehicles.count("car")

# count_occurrences(vehicles)

# input an array. 
# output a hash 

# def method with one arguement 
# Initialise a count variable at 0. 
# initialise an empty hash
# iterate through the array and add one to the count for that item (e.g car) key 
# print all the key value pairs. 