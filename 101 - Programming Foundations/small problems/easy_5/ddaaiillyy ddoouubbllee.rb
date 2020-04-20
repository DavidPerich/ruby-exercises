=begin
Write a method that takes a string argument and returns a new string that contains the value of the
original string with all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.
=end 
require 'pry' 

# input is a string. output is a stirng. remove all consecutive duplicate values. 

# first thought – create an array of the letters. delete if the previous index contains the same value. join the letters back together. 

# define a method(string)
# new array = string.chars 
# iterate through the array select 
#   select if the letter isn't the same as the previous letter
# end 
# join array


def crunch(string)
 array = string.chars
 results = []
 array.each_with_index do |char, index|
   results << char if char != array[index - 1]
 end
 p results.join
end 


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''













# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# p crunch('ddaaiillyy ddoouubbllee')
# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''