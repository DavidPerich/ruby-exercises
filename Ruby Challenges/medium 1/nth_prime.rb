# Write a program that can tell you what the nth prime is.

# By listing the first six prime numbers: 
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# Do not use Ruby's Prime class nor any of the prime-number testing methods in the Integer class. 
# For an algorithm to determine whether a number is prime, check out this article.

require 'pry'

class Prime
  def self.nth(n)
    raise ArgumentError if n <= 0 
    primes = []
    factor = 2
    
    
    until primes.size == n 
      primes << factor if prime?(factor) 
      factor += 1
    end
    primes.max
  end
  
  def self.prime?(num)
    (2..(Math.sqrt(num))).each {|i| return false if num % i == 0}
  end
end 

p  Prime.nth(6)

# Suppose one number is a factor of N and that it is smaller than the square-root of the number
# N.
# Then the second factor must be larger than the square-root.
# We can see this with the examples above: For 18, 
# we need only test numbers up to the square-root of 18 which is 4.243, 
# ie up to 4! This is much quicker than testing all the numbers up to 17

# So, putting these two shortcuts together, 
# we need only test those prime numbers up to 6 to see if they are factors of 37.
# If any are, the number is not prime (it is composite) and if none of them are,
# then the only factors would be 1 and 37 and 37 would be prime.
# The numbers to test are therefore: