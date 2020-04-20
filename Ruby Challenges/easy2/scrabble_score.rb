# Scrabble Score
# Write a program that given a word, computes the scrabble score for that word.

# Letter Values
# You'll need these:

# Letter                           Value
# A, E, I, O, U, L, N, R, S, T       1
# D, G                               2
# B, C, M, P                         3
# F, H, V, W, Y                      4
# K                                  5
# J, X                               8
# Q, Z                               10
# Examples
# "cabbage" should be scored as worth 14 points:

# 3 points for C
# 1 point for A, twice
# 3 points for B, twice
# 2 points for G
# 1 point for E
# And to total:

# 3 + 2*1 + 2*3 + 2 + 1
# = 3 + 2 + 6 + 3
# = 5 + 9
# = 14
# Test Sui


class Scrabble
  SCORES = {1 => %W(A E I O U L N R S T),
            2 => %W( D G),
            3 => %W(B C M P),
            4 => %W(F H V W Y),
            5 => %W(K),
            8 => %W(J X ),
            10 => %W(Q Z)}
            
  def initialize(word)
    word.nil? ? @word = "" : @word = word
    @score = 0
  end 
  
  def self.score(word)
    Scrabble.new(word).score
  end 
  
  def score
    @word.each_char do |char|
      SCORES.each {|key, value| value.include?(char.upcase) ? @score += key : 0 }
    end
    @score
  end
end 