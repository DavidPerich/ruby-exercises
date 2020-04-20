=begin Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

input an integer. output a string comprised of ones and zeros. 

problem. 

define method takes on areguement. 
intialize count variable.
initalize string variable.
begin a until loop 
  add 1 to string
 add one to counter
break if counter == string size
add 0 to string
add one to counter 
break if counter == strings.size

print string

=end 

def stringy(int, default=1)
  default == 1 ? (first, second = '1', '0') : (first, second = '0', '1' )
  counter = 0 
  result = ''
  loop do 
    result << first
    counter += 1
    break if counter == int 
    result << second
    counter += 1
    break if counter == int 
  end
  result
end

puts stringy(6, 0)
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'






# original answer

require 'pry'
def stringy x 
  count = 0 
  arr = []
  until count == x
    arr << "1"
    count +=1
    arr << "0" 
    count +=1 
  end 
  arr.join ("")
end

