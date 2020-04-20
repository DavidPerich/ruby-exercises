# Using the Card class from the previous exercise, create a Deck class that contains all of the standard 52 playing cards. Use the following code to start your work:

require 'pry'
class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @deck.empty?
    @deck.pop
  end

  private

  def reset
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @deck.shuffle!
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit, :value

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @value = set_value(rank)
  end
  
  def set_value(rank)
    case rank 
    when 2..10 then rank 
    when "Jack" then 11 
    when "Queen" then 12
    when 'King' then 13
    when 'Ace' then 14
    end 
  end 
  
  def <=>(other_card)
    value <=> other_card.value
  end
  
  def to_s 
    "#{rank} of #{suit}"
  end
end

deck = Deck.new
drawn = []
# binding.pry
52.times { drawn << deck.draw }

puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.
# Note that the last line should almost always be true; if you shuffle the deck 1000 times a second, you will be very, very, very old before you see two consecutive shuffles produce the same results. If you get a false result, you almost certainly have something wrong.
