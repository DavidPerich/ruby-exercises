# Write a program that takes a word problem and returns the answer as an integer.

# E.g.

# What is 5 plus 13?

# The program should return 18.

# What is 7 minus 5 minus 1?

# The program should return 1.

# Remember, that these are verbal word problems, not treated as you normally would treat a written problem. This means that you calculate as you move forward each step. This means 3 + 2 * 3 = 15, not 9.

# Hint: to solve this problem elegantly, you need to know how the send method works in Ruby. If you haven't seen it before, check it out here.

# Test suite:

# Problem: Take a phrase and extract the numbers and mathematical commands to return a integer answer. 
#   - how do you extract numbers and store numbers 
#     - need to make sure to capture negative numbers
#   - how do you extract and store commands
  
  
#   commands
#   "multiplied by"
#   "divided by" 
#   "plus"
#   "minus" 

=begin
  Learnings - don't need to pass symbols for send to work. Can just use the strings
  pass arguements to send in the object.send method, object syntax
  can monkey patch existing classes by writing an alias to existing methods
=end

require 'pry'

class WordProblem 
  def initialize(problem)
    @problem = problem
    @commands = problem.scan(/plus|minus|divided|multiplied/)
    @values = problem.scan(/(-*\d+\b)/).flatten.map(&:to_i)
    raise ArgumentError if @commands.empty?
  end 
  
  def answer 
    
    @commands.each_with_index.reduce(@values.first) do |result, (operator, index)|
      result.send operator, @values[index + 1]
    end
  end
end

# the way to do this without patching Integer is to add a hash which has "plus" => '+' and calling that instead.  
   # def answer # this was my original code for answer 
    # @result = @values.shift 
    # until @values.empty? 
    #   @result = @result.send @commands.shift, @values.shift
    # end
    # @result
  # end
  
class Integer
  alias_method :plus, :+
  alias_method :minus, :-
  alias_method :divided, :/
  alias_method :multiplied, :*
end

# ^^ this is a much quicker way of updating the Integer class 

# class Integer
#   alias 
  
#   def plus(num)
#     self + num 
#   end 
  
#   def divided(num)
#     self / num
#   end
  
#   def multiplied(num)
#     self * num
#   end 
  
#   def minus(num)
#     self - num 
#   end 
# end 


## where the problem is at - There is no divided method for a Integer. So I'm sending the symbol : divided to 

p  WordProblem.new('What is -12 divided by 2 divided by -3?').answer
 p WordProblem.new('What is -3 plus 7 multiplied by -2?').answer




# p 10.send :+,10