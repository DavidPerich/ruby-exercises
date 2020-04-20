=begin 
ou have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].
=end

# input is a num. output is an array. 
# problem - using an array as the data structure to represent lights on or off
# each 'round' switch the values that are at an index which is a multiple of the round. 
# return which lights are on or off. 
# rules

#   initialise array with switches number of false values
#   for each index in that array
#   if the switch index  % index == 0 
#   then we want to !value that is at that index position. 
# end
# return an array that is the index positions of only the true values in our holding array. 


require 'pry'


def lights(switches)
  array = []
  switches.times {array << false}
  count = 0
  until count == array.size - 1 
    count += 1 
    array.map!.with_index do |value, index|
      if  index % count == 0
        !value
      else 
        value
      end
    end
  end
 array
  end
  array.each_index.select do |index|
    array[index] = true
end

p lights 5
p lights 10 



# def lights(switches)
# array = (1..switches).to_a
# results = [false] * switches
# 1.upto switches do  |x|  
#   array.each do |num|
#     if num % x == 0 
#       results[num - 1]= !results[num-1]
#     else 
#       num 
#     end 
# end
   
# end
# results.each_index.select do |x|
#   if results[x] = true 
#     x
    
# end 

# p lights 5
# p lights 10 