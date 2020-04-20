# Create an object-oriented number guessing class for numbers in the range 1 to 100, with a limit of 7 guesses per game. The game should play like this:



#validate guesses are between the range 
#prompt the user to guessa a number between 1 and 100
# give feedback after a guess if the too high, too low or is the number. 
#initialise a number when the game starts that is the number to be guessed. 
# collect the guesses and give feedback if the number has been guessed before. 




  

class GuessingGame
  attr_reader :target
  attr_accessor :guesses, :guess 
  
  def initialize
    @target = rand(1..100)
    @guesses = 7 
    @guess = nil 
  end
  
  def play 
    loop do 
      prompt_guess
      self.guess = gets.chomp.to_i 
      break if valid_guess?(guess)
      puts "#{guess} is an invalid guess."
    end
    self.guesses -= 1 
    display_remaining
    
    # break if win? 
  end
  
  def win?(guess)
    self.target == guess 
  end 
  
  def loss? 
    self.guesses = 0 
  end 
  
  def valid_guess?(guess)
    (1..100).include?(guess)
  end
  
  def display_remaining
    puts "You have #{guesses} guesses remaining"
  end
  
  def prompt_guess
    puts "Enter a number between 1 and 100:"
  end
end 

game = GuessingGame.new
game.play








# require 'pry'
# class GuessingGame
#   attr_accessor :guesses
  
#   def initialize
#     @number = (1..100).to_a.sample
#     @guesses = []
#   end
  
#   def valid_guess?(guess)
#     # binding.pry
#     (1..100).include?(guess) && !guesses[0..-2].include?(guess)
#   end
  
#   def feedback(guess)
#     if guesses.include?(guess)
#       "You've guessed that number already!"
#     elsif guess < @number 
#       'Your guess is too low.'
#     else
#       'Your guess is too high.'
#     end 
#   end 
  
#   def win?(guess)
#     @number == guess
#   end
    
  
#   def prompt_guess
#   puts "Enter a number between 1 and 100"
#   end
  
#   def guesses_remaining
#     7 - @guesses.size
#   end 
  
#   def play 
#     answer = nil 

#     loop do 
#       loop do
#         prompt_guess
#         answer = gets.chomp.to_i 
#         break if valid_guess?(answer)
#         puts "Invalid guess!"
#       end 
      
#       break if win?(answer) || @guesses.size == 7 
#       puts feedback(answer)
#       @guesses << answer 
#       puts "You have #{guesses_remaining} guesses remaining"
#     end 
#     if win?(answer)
#       # binding.pry
#     puts  "That's the number!"
#     else 
#     puts  "You have got no more guesses. You lose :("
#     end 
#   end 
# end 



# # You have 7 guesses remaining.
# # Enter a number between 1 and 100: 104
# # Invalid guess. Enter a number between 1 and 100: 50
# # Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

# game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
# Note that a game object should start a new game with a new number to guess with each call to #play.