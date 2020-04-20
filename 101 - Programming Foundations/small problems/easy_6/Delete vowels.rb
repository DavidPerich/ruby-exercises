=begin
Write a method that takes an array of strings, and returns an array of the same string values, 
except with the vowels (a, e, i, o, u) removed.
=end
# input array 
# output – array

# problem. remove all vowels a, e, i, o, u

# select from array 

require 'pry'

def remove_vowels(array)
  array.map {|word| word.gsub(/[aeiou]/i, '')}
end 

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']




















# def remove_vowels string_array 
#   string_array .map do |word| 
#     word.gsub(/[aeiouAEIOU]/, '').squeeze" "
#   end 
# end 

# =begin

# easier solution. 
# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
# =end 

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
# p remove_vowels(%w(green YELLOW black white))
# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']