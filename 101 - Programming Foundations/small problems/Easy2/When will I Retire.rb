# Build a program that displays when the user will retire and how many years she has to work till retirement.

# input – 2x user input – age and desired retirement.

# prompt user for age 
# capture and conver to int
# prompt user for retirement age
# capture and convert to int

# calculate difference between retirement age and age. 
# print string what year it is then what year it is + difference 
# print difference to show how long left to work

puts "How old are you?"
age = gets.chomp.to_i 

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

years_till_retire = retire - age 

puts "It's #{Time.new.year}. You will retire in #{Time.new.year + years_till_retire}"
puts "You have only #{years_till_retire} years of work to go!"










# ––- 



# puts "how old are you?"
# age = gets.chomp.to_i 

# puts "At what age would you like the retire?"
# retire_age = gets.chomp.to_i

# year = 2018 
# year_when_retire = year + (retire_age - age)
# work_remaining = retire_age - age 

# p "its #{year}. You will retire in #{year_when_retire}. Yoou only have #{work_remaining} years to go"
