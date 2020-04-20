
=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz",
and finally if a number is divisible by 3 and 5, print "FizzBuzz".

=end 

# The classic. input 2 integers. 

# print each each number between the two numbers, except for multiples of 3 print ""


def fizzbuzz(num1, num2)
  for x in num1..num2 do 
    case 
    when x % 5 == 0 && x % 3 == 0 then 'fizzbuzz'
    when x % 5 == 0 then "buzz"
    when x % 3 == 0 then 'fizz'
    else x
    end
  end
end

fizzbuzz(1, 15)






# def fizzbuzz num1, num2
#   for x in num1..num2
#   if x % 3 == 0 && x % 5 == 0 
#       puts "fizzbuzz"
#     elsif x % 5 == 0 
#       puts "buzz" 
#     elsif x % 3 == 0 
#       puts "fizz" 
#     else 
#       puts x
#     end
#   end
# end 

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

