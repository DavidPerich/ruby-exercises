# Write a method that takes one argument, a positive integer, and returns the sum of its digits

# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# input one integer. returns one integer. 
# Problem is to sum of the digits e.g 23 = 2 + 3. Don't use any loops
# can use digits becuase order doesn't matter. 
# convert int to an array of its digits. sum that array.? 


def sum(int)
  int.digits.sum
end





puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45













# - original 


# def sum num 
# num.digits.sum
# end 




# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45