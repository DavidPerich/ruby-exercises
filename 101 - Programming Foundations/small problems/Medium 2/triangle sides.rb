# # A triangle is classified as follows:

# # equilateral All 3 sides are of equal length
# # isosceles 2 sides are of equal length, while the 3rd is different
# # scalene All 3 sides are of different length
# # To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side,
# and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# # Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, 
# or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# # Examples:

# # triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

require 'pry'

def triangle(num1, num2, num3)
  array = [num1, num2, num3] 
  longest = array.max 
  case 
  when longest > (array.inject(:+) - longest) then :invalid
  when array.include?(0) then :invalid
  when array.uniq.size == 1 then :equilateral
  when array.uniq.size == 2 then :isosceles 
  when array.uniq.size == 3 then :scalene
  else :invalid 
  end 
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

p triangle(3, 3, 3) 
# p triangle(3, 3, 1.5)
# p triangle(3, 4, 5) 
# p triangle(0, 3, 3) 
# p triangle(3, 1, 1)