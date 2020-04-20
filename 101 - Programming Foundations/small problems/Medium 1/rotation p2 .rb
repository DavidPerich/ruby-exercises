=begin 
Write a method that can rotate the last n digits of a number. For example:
Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.
=end

# input is two integers. output is one integer. 
# rules – always a positive integer. try use previous method. 
# problem - 




def rotate_array(array)
  array[1..-1] + [array[0]]
end

# convert digits to string then to array. 
#   untouched numbers == array[0.. -num]
#   rotated numbers  are equal to calling rotate_array on array[-num..-1]
#   result = untouched + rotated converted back to integer. 

def rotate_rightmost_digits(digits, num) 
 array = digits.to_s.chars
 untouched, rotated = array[0..-(num+1)], rotate_array(array[-num..-1])
 (untouched + rotated).join.to_i
end 

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917  
p rotate_rightmost_digits(735291, 6)






def rotate_rightmost_digits digits, number 
  array = digits.to_s.chars
  array[-number..-1] = rotate_array(array[-number..-1])
  array.join.to_i
end

