# Write a method that takes one argument, a string containing one or more words, 
# returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Examples:

# method with one areguemetn – a string that could be one word or longer. 
# output – a new string

# Only reverse words that have 5 or more letters. spaces are included only when one more word is present. 


# define a method that accepts one areguement 
# Split that string into an array by space deliminater – capture that in new array
# each word in the array – if it is greater than 5 characters then reverse the letters
# leave the < 5 words alone
# join the array back together with spaces


def reverse_words(string)
 array = string.split(" ").map! do |word|
  if word.length >= 5 
    word.chars.reverse.join
  else 
    word
  end
 end
 array.join(" ")
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS