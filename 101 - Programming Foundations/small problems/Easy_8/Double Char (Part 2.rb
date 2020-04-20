
=begin

Write a method that takes a string, and returns a new string in which every consonant character is doubled.
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
=end 

# input is a string. output is a string. 

# Problem – only double consonants when you return a new string. 

# # define a method 
# # initialtise a results string
# # call chars on the string and chain each with a block 
# # start a conditional 
# # if character is a conosntant results +=  char * 2 
# # else rsults + char 
# # end 
# results 

def double_consonants(string)
  results = ""
  string.chars.each do |x|
    results += x 
    results += x  if x =~ /[bcdfghjklmnpqrstvwxyz]/i 
  end
  results
end 

p double_consonants("Hello-World!")  
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""









# def repeater string
#   results = ""
#   string.each_char do |x|
#     results << x * 2
#   end 
#   results
# end  


# def double_consonants string 
#   results = ""
#   string.each_char do |x|
#     if x =~ /\A(?=[^aeiou])(?=[a-z])/i
#       results << (repeater x)
#     else 
#       results << x 
#     end 
#   end 
#   results
# end 

# p double_consonants("Hello-World!")  
# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""


