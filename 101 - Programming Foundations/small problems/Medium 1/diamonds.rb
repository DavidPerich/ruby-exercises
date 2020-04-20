=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

Examples
=end 

# input integer. output. printing integer number of strings to form a diamon. 
# rules – always an odd integer passed in. 

# from 1 to num - 1 print that many times '8' centre justified if number odd?
# print num * "*'
# from num - 1 down to 1 print "

def diamond(num)
  1.upto(num) do |x|
    puts ('*' * x).center(num) if x.odd?
  end
  
  (num - 1).downto(1) do |x|
    puts ('*' * x).center(num) if x.odd?
  end
end 

diamond(51)
puts '–-'
diamond(3)

# *
# ***
# *
puts '–-'
diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
































# def diamond num 
#   if num > 1 
#     1.upto num do |x|
#         if x.odd? 
#           p ('*' * x).center(num)
#         else
#         end
#       end
        
#       (num-1).downto 1 do |x|
#         if x.odd? 
#             p ('*' * x ).center(num)
#         else 
#         end
#       end 
#   else
#       p '*'
#   end
# end 


# diamond(51)

