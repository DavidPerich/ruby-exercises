# Pythagorean Triplet
# A Pythagorean triplet is a set of three natural numbers, {a, b, c}, for which, a**2 + b**2 = c**2.

# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
require 'pry'

class Triplet 
  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
    @numbers = [@a, @b, @c]
  end
  
  
  def sum
    @numbers.reduce(:+)
  end
   
  def product
    @numbers.reduce(:*)
  end
  
  def pythagorean?
    (@a ** 2 + @b ** 2) == (@c ** 2)
  end
  
  def self.where(factors)
    @min_factor = factors[:min_factor].nil? ? 1 : factors[:min_factor]
    @max_factor = factors[:max_factor]
    @sum = factors[:sum]
    valid_triplets
  end
  
  private 
  
  def self.valid_triplets
    array = (@min_factor..@max_factor).to_a.combination(3).select do |combination| 
      triplet = Triplet.new(*combination)
      @sum.nil? ? triplet.pythagorean? : (triplet.pythagorean? && triplet.sum == @sum)
    end
    array.map {|combination| Triplet.new(*combination)}
  end
end 

# where produces an array of arrays. 
  # for each combination in the range @min_factor to @maxfactor 
  # initialize a new Triplet with the combination if Pyhtagoran? is true 
# The sub arrays are three numbers that return true for pythagorean? 
# if max or min factors are passed in then the numbers must be between those ranges. 
  
#   if sum is passed in then the sum of hte values must be equal to that value. 


triplets = Triplet.where(max_factor: 10)
products = triplets.map(&:product).sort
p products