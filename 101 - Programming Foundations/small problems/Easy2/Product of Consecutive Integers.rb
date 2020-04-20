# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# input – user inputs a value (as a string). Output is a string with interpolation of either product or value. 

# prompt user for input 
# capture and convert to interget
# prompt for what equation they want complete (product or sum)
# capture and downcase. 

# product interget to array reduce with * 
# sum = array.sum
# print as a string

puts "Please enter an integer greater than 0"
num = gets.chomp.to_i

array =  (1..num).to_a

puts "Please enter 'S' to compute the sum or 'P' to compute the product"
operator = gets.chomp.downcase

p operator == 'p' ? array.reduce(:*) : array.sum


















# def compute_sum(number)
#   total = 1
#   total = (1..number).reduce(:+)
  
# end

# def compute_product(number)
#   total = 1
#   total = (1..number).reduce(:*)
  
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end