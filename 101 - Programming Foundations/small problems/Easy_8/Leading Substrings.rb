=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
The return value should be arranged in order from shortest to longest substring.

=end 

# input is a string. output is a string. 
# initialise a results array 
#   call chars on the stirng to create an array 
#   iterate with index through the array
#   add to the results array 0 to the index

# def substrings_at_start(string)
#   results = []
#   array = string.chars
#   array.each_with_index do |letter, index|
#     results << array[0..index].join
#   end
#   p results 
# end 

# def substrings_at_start(string)
#   results = []
#   count = 0
#   until count == string.size
#   results << string.slice(0..count)
#   count +=1 
#   end 
#   results
# end



p substrings_at_start('abc')
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']













# def sum_of_sums array –– use this as inspo
#   results = 0
#   array.each_index do |index|
#     results += array[0..index].sum
#   end 
#   results
# end 


# def substrings_at_start string
#   results = []
#   array = string.chars 
#   array.each_index do |index|
#     results <<  array[0..index].join
#   end 
#   results
# end 
