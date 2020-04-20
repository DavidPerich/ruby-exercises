=begin
Write a method that takes a single String argument and returns a new string that contains the original value
of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples

=end

# input is a single string. output New string 
# probelm is to capitalise each word in the stirng. 
#   split the string into an array
#   for each element in the array capitalize 
#   join " " 

def word_cap(string)
  string.split.map {|word| word.capitalize}.join(" ")
end 



p word_cap('this is a "quoted" word')
# p word_cap('four score and seven')
# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'









def word_cap string
  array = string.split 
  array.map do |word| 
    word.capitalize!
  end
  array.join " " 
end 

p word_cap('this is a "quoted" word')
p word_cap('four score and seven')
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'