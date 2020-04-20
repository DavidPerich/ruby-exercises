VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=>  #{message}"
end

def win?(first, second)
  first == 'rock' && second == 'scissors' ||
  first == 'scissors' && second == 'paper' ||
  first == 'paper' && second == 'rock' 
end

def display_results(player, computer)
  if win? player, computer
    user_score =+ 1 
    prompt "you win.  Your score is now #{user_score} and the computer has a score of #{computer_score}"
  elsif win? computer, player
    computer_score += 1 
    prompt "you lose Your score is now #{user_score} and the computer has a score of #{computer_score}"
  else
    prompt 'you tie'
  end
end

choice = ""
computer_choice = ""
cscore = 0
user_score = 0


prompt "Welcome to rock, paper, scissors, spock, lizard game"

loop do
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp
    if VALID_CHOICES.include? choice.downcase
      break
    else
      prompt "That is not a valid choice"
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt "You chose: #{choice} and computer chose: #{computer_choice}"
  display_results(choice, computer_choice)
  prompt "do you want to play again? Y/N?"
  play_again = gets.chomp
  break if play_again.downcase == 'n' 
  
  
  
end

prompt 'thanks for playing. Goodbye'
