# # Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
# # Spaces should not be counted as a character.

# input:

puts "Please write word or multiple words:"
user_input = gets.chomp 

p user_input.delete(' ').size
p user_input









# puts "Please write word or multiple words:"
# user_input = gets.chomp 

# puts "There are #{user_input.delete(" ").length} characters in the word #{user_input}"