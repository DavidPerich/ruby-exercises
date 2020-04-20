=begin
Given a string that consists of some words and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters
replaced by spaces. If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result (the result should never have consecutive spaces).
=end 

# input – string. output – string. 
# replace all non-alphanumeric with a space. 
# should never be consecutive spaces. 
# *split returns array with no spaces. 

# define method 
# replace all non-alphanumeric with space
# split to array
# rejoin with space* doesn't fix space in the front ' 

def cleanup(string)
  string.gsub(/[^0-9a-z ]/i, ' ').squeeze(" ")
end 


p cleanup("---what's my +*& line?")
p cleanup("---What's my +*& line?") == ' What s my line '
















# require 'pry' 
# def cleanup string 
#   letters = ('a'..'z').to_a
#   array = string.chars 
#   array.delete_if do |x|
#     true unless letters.include? x || " ")
#   end
# end 

# #their actual solution 
# =begin
# def cleanup(text)
#   text.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end
# =end

