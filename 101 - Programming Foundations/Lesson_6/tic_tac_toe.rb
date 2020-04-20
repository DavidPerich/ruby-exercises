require 'io/console'


# formatting methods

def prompt(msg)
  puts "=> #{msg}"
end

def continue
  puts 'Press any key when ready to play'
  STDIN.getch
end

def welcome
  prompt "Welcome to David's Tic Tac Toe game."
  prompt 'It is first to five wins or five draws.'
  prompt 'You can quit after any round'
  continue
end

WINNING_MATCH_SCORE = 5
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], # cols
                 [1, 4, 7], [2, 5, 8], [3, 6, 9], # rows
                 [1, 5, 9], [3, 5, 7]].freeze # diags
PLAYER_CHOICE = 'Choose'.freeze

# rubocop:disable Metrics/MethodLength
def display_board(brd, game_score)
  system 'clear'
  score_display game_score
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '–––––+–––––+––––-'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '–––––+–––––+––––-'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
end
# rubocop:enable Metrics/MethodLength

def score_display(game_score)
  puts "Player's score: #{game_score[:player_score]}, \
  Computers score: #{game_score[:computer_score]}, Draws: #{game_score[:draws]}"
  puts "You're #{PLAYER_MARKER}, computer is #{COMPUTER_MARKER}"
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

# game play methods

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "choose a square #{join_or empty_squares(brd)}:"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt 'Sorry that is not a valid choice'
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, marker)
  square = nil
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      square = brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    end
  end
  square
end

def computer_attack(board)
  find_at_risk_square(board, COMPUTER_MARKER)
end

def computer_defend(board)
  find_at_risk_square(board, PLAYER_MARKER)
end

def square_five_available?(brd)
  return 5 if brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  square = square_five_available? brd # take the 5
  square = computer_attack brd unless square # attack
  square = computer_defend brd unless square # defend
  square = empty_squares(brd).sample unless square # random
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  false # Nobody has won yet
end

def join_or(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 1
    arr.join
  when 2
    "#{arr[0]} #{word} #{arr[1]}"
  when 3..9
    arr[-1] = "#{word} #{arr[-1]}"
    arr.join delimiter
  end
end

def update_score(result, game_score)
  if result == 'Player'
    game_score[:player_score] += 1
  elsif result == 'Computer'
    game_score[:computer_score] += 1
  else
    game_score[:draws] += 1
  end
end

def first_player(answer)
  case answer
  when 'p' then PLAYER_MARKER
  when 'c' then COMPUTER_MARKER
  else
    prompt 'Good one...You didn\'t make a valid choice'
    prompt 'This round will have a random starting player'
    continue
    [PLAYER_MARKER, COMPUTER_MARKER].sample
  end
end

def next_player(current)
  if current == PLAYER_MARKER
    COMPUTER_MARKER
  else
    PLAYER_MARKER
  end
end

def place_piece!(board, first_player)
  if first_player == PLAYER_MARKER
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def display_end_round(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "it's a tie!"
  end
end

def end_match(board, game_score)
  if game_score.any? { |_player, score| score == WINNING_MATCH_SCORE }
    game_end_message(board, game_score)
  end
end

def game_end_message(board, game_score)
  prompt "#{detect_winner(board)} reached #{WINNING_MATCH_SCORE}!"
  prompt "The final scores were:
          - Player's score: #{game_score[:player_score]},
          - Computers score:  #{game_score[:computer_score]},
          - Draws: #{game_score[:draws]}"
  true
end

def play_another_round
  prompt 'keep playing?'
  answer = gets.chomp.downcase
  true if answer.start_with?('y')
end

def play_another_match
  prompt 'play another match?'
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

# game logic

loop do
  loop do # main game loop
    welcome
    game_score = { player_score: 0, computer_score: 0, draws: 0 }

    loop do
      board = intialize_board
      display_board board, game_score
      current_player = PLAYER_CHOICE

      if current_player == PLAYER_CHOICE
        prompt 'Who should go first? Press P) for player or C) for Computer'
        answer = gets.chomp.downcase
        current_player = first_player answer
      end

      loop do
        place_piece!(board, current_player)
        display_board board, game_score
        current_player = next_player current_player
        break if someone_won?(board) || board_full?(board)
      end

      display_end_round board
      update_score detect_winner(board), game_score

      break if end_match board, game_score
      break unless play_another_round
    end
    break unless play_another_match
  end
  break
end

prompt 'Thanks for playing. Bye bye.'
