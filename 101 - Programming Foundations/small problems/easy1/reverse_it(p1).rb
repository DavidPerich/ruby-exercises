#Write a method that takes one argument, a string, and returns the same string with the words in reverse order. 

# input is a string. output is a string. 

# options. 
# create new array from the string and pop the last values into a new array. then join
# create an array from the string and reverse the array order. 


# define method with one arguement
# convert string to array 
# reverse the array
# join back into a string with spaces 
# end 

def reverse_sentence(string)
  string.split(" ").reverse.join(" ")
end 


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
