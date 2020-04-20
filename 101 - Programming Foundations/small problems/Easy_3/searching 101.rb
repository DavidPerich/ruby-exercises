# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.


# input – 6 times user input. output string – which includes whether 6th number appears in the first 5 numbers. 

# initliase emptty array 
# 6 times loop
# prompt user for imput 
# capture in an array 
# end 

# last value = array.pop 
# array.include? last value ? 

array = []
6.times do 
  puts "Enter number?" 
  array << gets.chomp.to_i
  p array
end 

last_value = array.pop 
p array.include?(last_value) ? "The number #{last_value} appears in #{array}" : "The number #{last_value} does not in #{array}"









# old answer below








# def prompt message 
#   p "=> #{message}"
# end 

# num_array = []

# 5.times do 
#   prompt "enter a number"
#   num = gets.chomp 
#   num_array << num 
# end 

# prompt "enter your final number"
# num = gets.chomp 

# if num_array.include? num 
#   puts "The number #{num} appears in #{num_array}"
# else
#   puts "The number #{num} does not appear  in #{num_array}"
# end 