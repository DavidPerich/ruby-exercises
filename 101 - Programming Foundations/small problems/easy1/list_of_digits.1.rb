# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Examples:

def digit_list(int)
  int.to_s.chars.map {|x| x.to_i}
end 


puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# input a positive integer. 
# output array of integers 

# pseudo. 

# # def method one arguemenet – integer 
#   inter convert to string – split to array to kepe order right. convert back to digits. 
# # end 
