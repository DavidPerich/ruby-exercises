
=begin

Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

=end 

def substrings_at_start(string)
  results = []
  array = string.chars
  array.each_with_index do |letter, index|
    results << array[0..index].join
  end
  results 
end 


def substrings(string)
  new_results = []
  until string == "" 
   new_results << substrings_at_start(string)
    string = string[1..-1]
  end
  new_results.flatten
end

def palindromes(string)
  substrings(string).select {|str| str == str.reverse && str.size > 1}
end 

p palindromes('madam')
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


# def substrings_at_start string
#   results = []
#   array = string.chars 
#   array.each_index do |index|
#     results <<  array[0..index].join
#   end 
#   results
# end 
# require 'pry'

# def substrings string
# results = []
# until string.size == 1
#   results << (substrings_at_start string)
#   string.slice! (0)
# end 
# results.flatten
# end 

# def palindromes string 
# array_of_substrings = substrings string 
# array_of_substrings.select {|x| x == x.reverse && x.size > 1}
# end 

