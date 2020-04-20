=begin 
Write a method that takes a positive integer, n, as an argument, 
and displays a right triangle whose sides each have n stars. 
The hypotenuse of the triangle (the diagonal side in the images below) 
should have one end at the lower-left of the triangle, and the other end at the upper-right.

input is an integer. output is to print a right angled triangle. 
problem is to print a right angled triangle comprised of *. 
The height of the triangle and width of the triangle are equal to the arguement



triangle(5)

    *
   **
  ***
 ****
*****
=end

def triangle(num)
  1.upto(num) {|x| p ('*' * x).rjust(num)}
end 

triangle(9)
triangle(5)




















# def triangle number 
#   count = 1
#   number.times do |x| 
#     puts ("*" * count).rjust number
#     count += 1 
#   end 
# end 

# triangle(9)
# triangle(5)