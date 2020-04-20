require 'pry'
require 'io/console'

VALUES = {  ace: [1, 11], two: 2, three:  3, four: 4, five: 5, six: 6, seven: 7,
            eight: 8, nine: 9, ten: 10, jack: 10, queen: 10, king: 10 }.freeze
SUITS = [:hearts, :clubs, :diamonds, :spades].freeze
CARDS = [:ace, :two, :three, :four, :five, :six, :seven,
         :eight, :nine, :ten, :jack, :queen, :king].freeze

# formatting methods

def prompt(msg)
  puts "=> #{msg}"
end

def continue
  prompt 'Press any key when ready to play'
  STDIN.getch
end

def prompt_next_card
  prompt 'Press any key to see dealers next card'
  STDIN.getch
end

def welcome
  prompt 'Welcome to the game of Twenty One.'
  continue
end

def _display_card(card)
  print '  %s of %s  ' % card
end

def _display_player(cards)
  print 'Player\'s Hand:'
  cards.each { |card| _display_card(card) }
  print "\n"
end

def _display_dealer(cards, hide_card = true)
  if hide_card
    print 'Dealer\'s Hand: HIDDEN CARD '
    cards[1..-1].each { |card| _display_card(card) }
  else
    prompt 'Dealer\'s Hand:'
    cards.each { |card| _display_card(card) }
  end
  puts "\n"
end

def play_again?
  puts '==========================='
  prompt 'play another round?'
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

def _display_resuts(result)
  case result
  when :twenty_one then prompt 'Twenty-One!'
  when :bust then prompt 'Bust!'
  end
end

def _display_current_board(player_cards, dealers_cards)
  player_score = update_score(0, player_cards)
  system 'clear' 
  _display_player(player_cards)
  prompt "Player score: #{player_score}"
  puts "\n ==========================="
  _display_dealer(dealers_cards)
end 

# game methods

def hit(player, cards_in_play)
  card = []
  card << CARDS.sample << SUITS.sample
  if valid_card? cards_in_play, card
    player << card
    cards_in_play << card
    card
  else
    hit(player, cards_in_play)
  end
  player
end

def valid_card?(cards_in_play, card)
  true unless cards_in_play.include?(card)
end

def ace_score(score, card)
  result =
    if (score + 11) < 21 # this is to check it doesn't bust
      VALUES[card[0]][1] # this is to add 11
    elsif (score + 11) > 21
      VALUES[card[0]][0] # this is to add 1 from the ace
    else
      0
    end
  result
end

def update_score(score, cards)
  score = 0
  cards.each do |card|
    score +=
      if card[0] == :ace
        ace_score score, card
      else
        VALUES[card[0]]
      end
  end
  score
end

def bust?(score)
  score > 21
end

def twenty_one?(score)
  score == 21
end

def check_result(player, dealer)
  result = case
           when player < dealer && !bust?(dealer) then 'Dealer Wins!'
           when player > dealer && !bust?(player) then 'Player Wins!'
           when bust?(player) && bust?(dealer) then 'Nobody Wins - You both bust!'
           when player == dealer then "It's a draw!"
           end
  result
end

def first_hand_player(players_cards, dealers_cards, cards_in_play)
  2.times { hit players_cards, cards_in_play }
  _display_player(players_cards)
  puts "\n ==========================="
  2.times { hit dealers_cards, cards_in_play }
  _display_dealer(dealers_cards)
end

def players_turn(players_cards, cards_in_play, player_score, dealers_cards)
  loop do
    player_score = update_score(player_score, players_cards)
    return _display_resuts(:twenty_one) if player_score == 21
    return _display_resuts(:bust) if bust? player_score
    _display_current_board(players_cards,dealers_cards)
    
    break unless hit_or_stay(players_cards, cards_in_play)
  end
end

def dealer_turn(dealers_cards, cards_in_play, dealer_score, players_cards)
  loop do
    score = update_score(dealer_score, dealers_cards)
    prompt score
    return _display_resuts(:twenty_one) if dealer_score == 21
    return _display_resuts(:bust) if bust? dealer_score
    break if score >= 17
    hit(dealers_cards, cards_in_play)
    prompt_next_card
    prompt _display_dealer(dealers_cards)
  end
end

def hit_or_stay(players_cards, cards_in_play)
  loop do
    prompt 'Do you want to hit or stay'
    answer = gets.chomp.downcase
    return hit(players_cards, cards_in_play) if answer.start_with?('h')
    return false if answer.start_with?('s')
    prompt "It doesn't look like you hit or stay"
  end
end

# game logic

loop do
  system 'clear'
  player_score = 0
  dealer_score = 0
  players_cards = []
  dealers_cards = []
  cards_in_play = []
  welcome
  system 'clear'
  loop do
    first_hand_player players_cards, dealers_cards, cards_in_play

    players_turn(players_cards, cards_in_play, player_score, dealers_cards)
    player_score = update_score(player_score, players_cards)
    prompt _display_player(players_cards)

    dealer_turn(dealers_cards, cards_in_play, dealer_score, players_cards)
    dealer_score = update_score(dealer_score, dealers_cards)
    system 'clear'
    prompt check_result(player_score, dealer_score)
    puts '========================='
    prompt "#{_display_player(players_cards)} is a score of #{player_score}"
    prompt "#{_display_dealer(dealers_cards, false)} is a score of #{dealer_score}"
    break
  end
  break unless play_again?
end

prompt 'Thank you for playing Twenty-One! Good bye!'
