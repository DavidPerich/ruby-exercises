# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples


# define method with one interger as arg
# create an array from 1 to that arguement 
# select! elements in that array that are multiples of three or 5
# sum the new array

def multisum(num)
  (1..num).to_a.select! {|x| x % 3 == 0 || x % 5 == 0}.sum

end 



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168



# # def multisum num 
# #   sum = 0
# #   for x in 1..num 
# #   if x % 3 == 0 || x % 5 == 0 
# #     sum += x 
# #   else 
# #   end 
# # end
# # sum
# # end

# =begin cleaner solution 
# def multisum(num)
#   (1..num).to_a.select { |x| x%3==0 || x%5==0 }.sum
# end
# end


