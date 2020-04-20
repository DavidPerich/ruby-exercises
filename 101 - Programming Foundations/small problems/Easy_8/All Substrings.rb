
=begin

Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, 
the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the substrings_at_start method you wrote in the previous exercise:

=end 
# input is a string. Output is an array of strings
# problem - what are all the possible strings that can be formed by the the starting string. 
# All those combinations should be return in order, but start position and then in order of shortest to longest. 

#   new_results = []
#   until the string is empty 
#   results << calling the substring_at_start method on our string
#   string = string without the first letter.
# end 
# new results flatten
# end




def substrings_at_start(string)
  results = []
  array = string.chars
  array.each_with_index do |letter, index|
    results << array[0..index].join
  end
  results 
end 


def substrings(string)
  new_results = []
  until string == "" 
   new_results << substrings_at_start(string)
    string = string[1..-1]
  end
  new_results.flatten
end

p substrings('abcde') 
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]





# def substrings_at_start string
#   results = []
#   array = string.chars 
#   array.each_index do |index|
#     results <<  array[0..index].join
#   end 
#   results
# end 
# require 'pry'

# def substrings string
# results = []
# until string.size == 1
#   results << (substrings_at_start string)
#   string.slice! (0)
# end 
# results.flatten
# end 


