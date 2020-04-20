# Write a program that can detect palindrome products in a given range.

# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers (range 10 ~ 99) is 9009 = 91 x 99.

# Test suite:

# palindrome is number that reads the same both ways. 
require 'pry'
class Palindromes
  def initialize(factors)
    @max = factors[:max_factor]
    @min = factors[:min_factor].nil? ? 1 : factors[:min_factor]
    @factors = generate
  end
  
  def generate
    result = {}
    (@min..@max).each do |x|
      (x..@max).each do |y|
        result[Palindrome.new([x, y]] = x * y if palindrome? {x * y}
      end 
    end 
    result
  end
  
  def palindrome?
    yield.to_s == yield.to_s.reverse
  end
  
  def smallest
    min = @factors.values.min 
    @factors = @factors.select {|key, value| value == min}
    self
  end 
  
  def largest
   max = @factors.values.max 
   @factors = @factors.select {|key, value| value == max}
   self
  end
  
  def factors 
    @factors.keys.uniq
  end
  
  def value
    @factors.values.first
  end
end

class Palindrome
  
  def initialize(value, factors)
    @value = value
    @factors = factors
  end
end 


# bum =  Palindromes.new(max_factor: 9)
# p bum.smallest
double = Palindromes.new(max_factor: 99, min_factor: 10)
# binding.pry
p double.largest
p double.smallest.value

# class Palindromes
#   def initialize(factors)
#     @max = factors[:max_factor]
#     @min = factors[:min_factor].nil? ? 1 : factors[:min_factor]
#     @factors = generate
#   end
  
#   def generate
#     result = {}
#     (@min..@max).each do |x|
#       (x..@max).each do |y|
#         result[[x, y]] = x * y if palindrome? {x * y}
#       end 
#     end 
#     result
#   end
  
#   def palindrome?
#     yield.to_s == yield.to_s.reverse
#   end
  
#   def smallest
#     min = @factors.values.min 
#     @factors = @factors.select {|key, value| value == min}
#     self
#   end 
  
#   def largest
#   max = @factors.values.max 
#   @factors = @factors.select {|key, value| value == max}
#   self
#   end
  
#   def factors 
#     @factors.keys.uniq
#   end
  
#   def value
#     @factors.values.first
#   end
# end