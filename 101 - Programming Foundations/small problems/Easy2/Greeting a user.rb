
# Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# input – user respone. Output – string.

# prompt user for name
# capture name
# begin conditional 
# if last char in name index is "!" then 

puts "what is your name?"
name = gets.chomp 
normal_welcome = "Hello #{name}"
screaming = "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING!"

p name[-1] == '!' ? screaming : normal_welcome

# Examples
















# puts 'what is your name?'
# name = gets.chomp 

# if name.end_with? "!"
#   puts "HELLO #{name.upcase} WHY ARE WE SCREAMING"
# else 
#   puts "hello #{name}."
# end

