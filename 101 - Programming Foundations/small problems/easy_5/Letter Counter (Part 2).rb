# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.





def word_sizes(string)
  result = {}
  array = string.split(" ")
  array.each do |word|
    word.gsub!(/[^0-9a-z]/i, '')
    result[word.size] += 1 unless result[word.size] == nil 
    result[word.size] = 1 if result[word.size] == nil
  end
  result
end




# p word_sizes("Four score and seven.") 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}












# def word_sizes string
#   hash  = Hash.new(0)
#   string.split.each do |word|
#     word = word.chars.select do |letter| 
#       ('a'..'z').to_a.include? letter.downcase
#     end
#       hash[word.size] +=1 
#     end 
#   hash
# end 

# =begin
# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     clean_word = word.delete('^A-Za-z')
#     counts[clean_word.size] += 1
#   end
#   counts
# end
# =end 

# p word_sizes("Four score and seven.") 

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# p word_sizes('') == {}



