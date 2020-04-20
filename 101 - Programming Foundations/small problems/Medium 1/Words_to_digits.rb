=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence 
of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=end 

# input is a string. output is a string. 
# problem: Convert the english version of the numbers in the string to numeric version of the numbers(still part of the string)

# create a array of the english version the numbers. in an order so that index == the enlgihs number. E.g [zero, one, two]
# create an array from the string. 
# call map the array. 
#   if the element is included in our array of english numbers, then map the index position of that word (as a string )
#     join the array back to a string. 
# map 


def word_to_digit(string)
  numbers = %w(zero one two three four five six seven eight nine)
  array = string.split(/[" "'.']/)
  array.map! do |word|
    if numbers.include? word 
      numbers.index(word)
    else 
      word
    end
  end
  p array.join " "
end 
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'




















# require 'pry'


# VALUES_HASH = ["one" => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'zero' => 0]

# def word_to_digit(string)
#   string = string.split.map do |word|
#     if VALUES[0][word].is_a? Integer 
#       VALUES[0][word]
#     else 
#       word
#     end 
#   end 
#   string.join " "
# end 

# p word_to_digit('Please call me at five five five one two three four. Thanks.')



# =begin
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze

# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
#   end
#   words
# end
# =end 