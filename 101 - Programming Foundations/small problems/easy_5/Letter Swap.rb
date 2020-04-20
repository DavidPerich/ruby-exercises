=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first 
and last letters of every word is swapped.
You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces
=end 

# input is a string. output is a string. 
# split into an array of words
# map each word with the thing reassignment of index 0 and -1. 
# join



def swap(string)
  array = string.split(" ").map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  array.join(" ")
end

p swap('Oh what a wonderful day it is')

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'













# def swap string
#   result = string.split " "
#   result.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#   end 
#   result.join " "
# end


# p swap('Oh what a wonderful day it is')

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'