# Write a program that given a phrase can count the occurrences of each word in that phrase.

# For example, if we count the words for the input "olly olly in come free", we should get:

# olly: 2
# in: 1
# come: 1
# free: 1

# phrase = Phrase.new('one fish two fish red fish blue fish')
#     counts = { 'one' => 1, 'fish' => 4, 'two' => 1, 'red' => 1, 'blue' => 1 }

# input: a stinrg. output a hash that contains each unique word in the string and its count

require 'pry'

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end 
  
  def word_count
    result = Hash.new(0)
    @phrase.scan(/\b[\w']+\b/) do |word|
      result[word.downcase] += 1
    end
    result
  end 

end 


phrase = Phrase.new("Joe can't tell' between 'large' and large.")
p phrase.word_count






# class Phrase

#   attr_reader :words
  
#   def initialize(words)
#     @words = words
   
#   end 
  
#   def word_count 
#     count = Hash.new(0)
#   @words.scan(/\b[\w']+\b/) do |word|
#       count[word.downcase] += 1 
#     end 
    
    
#     count
#   end
# end 
