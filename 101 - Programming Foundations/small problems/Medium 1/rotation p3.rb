=begin 
If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Example:
=end



def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits digits, number 
  array = digits.to_s.chars
  array[-number..-1] = rotate_array(array[-number..-1])
  array.join.to_i
end

def max_rotation(number)
  size = number.to_s.size
  until size == 1 
    number = rotate_rightmost_digits(number, size)
    size -= 1 
  end 
  number
end

# reassign number to be equal to rotate_rightmost_digits method with the arguements of number, size
#   size -= 1 
  
#   call rotate_rightmost_digits repedetly on small subsets up the number
#   which means I need to pass in a new number value each time. 
# input is intger. output is an intge. 
# problem – Rotate to the right the entire number. Then rotate to the right the number, except for first value. then except for second value etc. 



p max_rotation(735291)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845





def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto() do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

