# Anagrams
# Write a program that, given a word and a list of possible anagrams, selects the correct sublist that contains the anagrams of the word.

# For example, given the word "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets". Please read the test suite for exact rules of anagrams.
require 'pry'

class Anagram 
  def initialize(key)
    @key = key.downcase
  end 
  
  def match(array)
    array.select do |word|
      word.downcase.chars.sort == @key.chars.sort && word.downcase != @key
    end
  end 
  
end 

 detector = Anagram.new('master')
 p detector.match(%w(stream pigeon maters))























# class Anagram 
#   def initialize(org_word)
#     @org_word = org_word 
#   end 
  
#   def match(array)
#     array.select {|word| anagram?(word)}
#   end 
  
#   private
  
#   def anagram?(word)
#     word.downcase.chars.sort == @org_word.downcase.chars.sort &&
#     word.downcase != @org_word.downcase
#   end 
# end 
