# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below),
# but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
# There are a few more rules for edge cases, and there are regional variants too.



# if word starts with [aeiou] ad "ay" to end of the word
# if word begins with non-vowel sound then move first two letters to the end of the word Then add ay to the end of the word 
require 'pry'

class PigLatin
  def self.translate(phrase)
    phrase.split(" ").map {|word| translate_word(word)}.join(" ")
  end 
  
  def self.translate_word(word)
    @word = word 
    need_to_change?(@word) ? modify_consonant(@word) : modify_vowel(@word)
  end
  
  def self.need_to_change?(word)
    case 
    when word =~ (/^[aeiouyx][^aeiou]+/i) then false  
    when word =~ (/^[q][^aeio]*/) then @sound = @word.slice(/^[^aeiou][^aeio]*/)
    when word =~ (/^[y][aeiou]/i) then @sound = @word.slice(/^y/)
    else
      @sound = @word.slice(/^[^aeiou]qu|[^aeiou]*/)
    end 
  end 
  
  def self.modify_vowel(word)
    word + "ay" 
  end 
  
  def self.modify_consonant(word)
    word.slice(@sound.length..-1) + @sound + "ay"
  end
end 

p PigLatin.translate('yellow')

#fails with multiple words
# fails with consonant vowels sounds e.g "ye"
# slice (0..1) is wrong. its actually all all characters until a vowel – this will fix a couple of different errors e.g thr, sch, x, p 
# qu is part of the same sound – u is silent. 
# y before a conosant