# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# input – user input twice 
# output string – with two values (area in meters and area in feet) interpolated in the stirng. 

# ask user question about lenght in metres
# capture response as integer 
# ask quesiton about width 
# capture as integer
# calculate area 
# string interpolation to display

puts "will you be using meters or feet? Press (m) or (f)"
measurement = gets.chomp.downcase
puts "Enter the length of the room?" 
length = gets.chomp.to_i 
puts "Enter the width of the room?"
width = gets.chomp.to_i 

area_metres = 0
area_feet = 0 

if measurement == 'm' 
  area_metres = width * length
  area_feet = area_metres * 10.7639
elsif measurement == 'f'
  area_feet = width * length
  area_metres = area_feet / 10.7639
else 
  "you entered an made up unit of measurement"
end 

p "The area of the room is #{area_metres} square metres (#{area_feet} square feet"











# ––- 

# puts "how wide is your room (in metres)?"
# width = gets.chomp.to_i  

# puts "how long is your room (in metres)?"
# length = gets.chomp.to_i 

# puts "the area of the room is #{length * width} metres (#{(length * width)*10.7639} feet)"