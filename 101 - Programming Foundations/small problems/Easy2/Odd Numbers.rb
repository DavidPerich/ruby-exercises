# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on separate lines.

# output – all the odd numbers on seperate lines. 
# odd number is number % 2 has a remaineder of % 1 

# loop through the range 1 to 99 and print a number if when divided by 2 it has a remainder of 1

for i in 1..99 
  puts i if i % 2 == 1
end 

for i in 1..99 
  puts i if i.even?
end 


