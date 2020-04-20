# In this exercise, your task is to create a new Enumerator object. When creating a new Enumerator,
# you may define what values are iterated upon. 
# We'll want to create an Enumerator that can iterate over an infinite list of factorials. 
# Once you make this new Enumerator, test it out by printing out the first 7 factorial values, starting with zero factorial.

# More specifically, print the first 7 factorials by using an "External Iterator".
# Once you have done so, reset your Enumerator. 
# Finally, reprint those same 7 factorials using your Enumerator object as an "Internal Iterator".

max = 5 
factorial = max.downto(1).inject(:*)
puts factorial

array = (1..max).to_a

p array

enumerator = Enumerator.new([array])
require 'pry'

binding.pry

# enumerator.each do |item|
#   puts "#{item}: #{item.downto(1).inject(:*)}"
# end 

# p enumerator

# example 

# 5! 
# 1 
# 2
# 6
# 24
# 120 
# etc 