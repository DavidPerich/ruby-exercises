# Divisors
# Write a method that returns a list of all of the divisors of the positive integer
# passed in as an argument. The return value can be in any sequence you wish.

# Examples

# input an integer. output an array of a values which are divisors of input. 
# between 1 and arg check whether value is divisor of arg. If it is add it to results array 
# return results array. 


def divisors(arg)
  results = []
  for i in 1..arg
    results << i if arg % i == 0 
  end
  results
end 



p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute