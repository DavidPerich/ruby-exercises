# he Greek mathematician Nicomachus devised a classification scheme for natural numbers, 
# identifying each as belonging uniquely to the categories of abundant, perfect,
# or deficient.
# A perfect number equals the sum of its positive divisors — 
# the pairs of numbers whose product yields the target number, excluding the number itself. 
# This sum is known as the Aliquot sum.


# Examples:

# 6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
# 28 is a perfect number because 28 = 1 + 2 + 4 + 7 + 14.
# Prime numbers 7, 13, etc are deficient by the Nicomachus classification.
# Write a program that can tell if a number is perfect, abundant or deficient.


# Perfect: Sum of factors = number
# Abundant: Sum of factors > number
# Deficient: Sum of factors < number
  # perfect = sum of positive disvors (pairs of numbers whose product yields the target number, excluding hte target number)
  # Abundant - sum of factors > number 
  # deficient: sum of factors < number

require 'pry'

class PerfectNumber

  def self.classify(num)
    raise RuntimeError if num <=0 
    case num <=> sum_of_divisors(num)
    when 1 then "deficient"
    when 0 then "perfect"
    when -1 then "abundant"
    end 
    
  end 
  
  def self.sum_of_divisors(num)
    p (1...(num - 1)).inject {|sum, i| sum + i if num % i == 0}
    
  end 
end


  
 p PerfectNumber.classify(13)
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
# class  PerfectNumber
#   def self.classify(limit)
#     raise RuntimeError, "Number is below small" if limit <= 0
#     sum = (1..limit-1).select {|num| limit % num == 0}.sum 
#     case sum <=> limit
#     when 1 then "abundant"
#     when 0 then 'perfect' 
#     when -1 then 'deficient' 
#     end
#   end
# end