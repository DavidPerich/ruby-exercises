# Sum of Multiples
# Write a program that, given a number, can find the sum of all the multiples of particular numbers up to but not including that number.

# If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of these multiples is 78.

# Write a program that can find the sum of the multiples of a given set of numbers. If no set of numbers is given, default to 3 and 5.


# given a number. Find all multiples of particular numbers up to but not including that number. 

# If no set of numbers is given, default to 3 and 5

require'pry'

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers.empty? ? [3,5] : numbers
  end 
  
  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end 
  
  def to(limit) 
    array = 1.upto(limit - 1).select do |x|
      @numbers.any? {|numbers| x % numbers == 0} 
    end 
    array.sum
  end 
end

p SumOfMultiples.to(4)
























# class SumOfMultiples
#   def initialize(*factors)
#     @factors = factors
#   end 
  
#   def self.to(limit)
#     SumOfMultiples.new(3,5).to(limit)
#   end
  
#   def to(limit)
#     (0..limit-1).to_a.reject {|num| check_factor(num)}.sum
#   end 
  
#   private 
  
#   def check_factor(num)
#     @factors.each {|factor| return false if num % factor == 0}
#   end
# end 
