=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
such that the first 2 numbers are 1 by definition, and each subsequent number 
is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, 
but the results grow at an incredibly rapid rate. For example, 
the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, 
especially considering that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the 
first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
=end

# input a integer. output an integer. the index position of the first number in the fibonacci sqequence that has the same number
# of digits as the arguement passed int. 
# Problem - calculates the first numbre in the fibonacci squence that has the digits passed in as an arguement. 

# need a loop that calculates the fibonacci sequence and stops when it the number is arguement length. 



def find_fibonacci_index_by_length(num)
  results = [1, 1]
  until results[-1].to_s.size == num  
  p results << results[-2] + results [-1]
  end 
  results.size
end 




p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847









# def find_fibonacci_index_by_length number
#   fibonacci = [0,1]
#   until fibonacci.index{|x| x.to_s.length == number }
#     fibonacci << fibonacci[-1] + fibonacci[-2]
#   end 
#   fibonacci.size - 1
# end 

# p find_fibonacci_index_by_length(100)
