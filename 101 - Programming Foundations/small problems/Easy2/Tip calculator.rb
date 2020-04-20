# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# input – user input. Output two stirngs one with interpolated tip the other with total

# prompt user for bill total 
# capture answer
# prompt for tip percantage 
# capture answer 

# calcalate tip – make sure to use percentage
# calculate new total 
# print strings with values. 

puts "What is the bill?"
bill = gets.chomp.to_f
puts "what is the tip percantage?"
percantage = gets.chomp.to_f

tip = bill * percantage/100 
bill += tip 

puts "The Tip is $#{sprintf("%.2f", tip)}"
puts "The bill is $#{sprintf("%.2f", bill)}"



# puts "how much was your bill?"
# bill = gets.chomp.to_f   

# puts "what percent are you going to tip?" 

# tip_rate = gets.chomp.to_f 

# tip = (tip_rate / 100 ) * bill
# p tip 
# p tip.to_i + bill.to_i