=begin

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, 
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

=end 

def prompt string
  puts "=> #{string}"
end 

prompt "please enter a noun?"
noun = gets.chomp 

prompt "please enter a verb"
verb = gets.chomp 

prompt "please enter an adjective" 
adjective = gets.chomp 

prompt "please enter an adverb" 
adverb = gets.chomp 

madlib = "Do you  #{verb} your piece of shit   #{noun} #{adverb}? wow! #{ adjective}!"

p madlib 


