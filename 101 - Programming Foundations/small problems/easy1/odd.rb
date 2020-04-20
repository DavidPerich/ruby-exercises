# Odd
# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method return true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# Examples:


def is_odd?(int)
  int % 2 == 1 
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# integer as input – can be positive, negative or zero 
# output boolean 

# def method takes one integer 
# return false if input % 2 == 0 
# return boolean 
  