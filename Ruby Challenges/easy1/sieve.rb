# # Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

# # The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit. 
# It does so by iteratively marking as composite (i.e. not prime) the multiples of each prime, starting with the multiples of 2.

# # Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit]).

# # The algorithm consists of repeating the following over and over:

# # take the next available unmarked number in your list (it is prime)
# # mark all the multiples of that number (they are not prime)
# # Repeat until you have processed each number in your range. When the algorithm terminates, 
# all the numbers in the list that have not been marked are prime. The wikipedia article has a useful graphic that explains the algorithm.

# # Notice that this is a very specific algorithm, and the tests don't check that you've implemented the algorithm, 
# only that you've come up with the correct list of primes.

# # Test suite:

class Sieve
  def initialize(limit) 
    @range = (2..limit).to_a
  end
  
  def primes
    @range.each do |num|
      @range.delete_if do |num2|
        num2 % num == 0 && num2 != num 
      end 
    end
  end 
end

p Sieve.new(10).primes

    # for 2.. limit take the the multiple of 2 and mark every composite off
    # after marking off every multiply of 2 jump to the next numbre not marked off
    # take array of all numbers
    # delete_if number is multiple of index 0
    # move to next index 

# expected = [2, 3, 5, 7]











# require 'pry'
# class Sieve 
#   def initialize(limit) 
#     @range = (2..limit).to_a
#   end 
  
#   def primes
#     @range.each do |prime|
#       @range.reject! {|num| num != prime && num % prime == 0}
#     end 
#   end
# end 