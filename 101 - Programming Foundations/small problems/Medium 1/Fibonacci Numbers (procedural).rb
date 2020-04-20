

=begin
In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

Examples:

=end 
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

def fibonacci(num)
  sequence = [1,1]
  return 1 if num <= 2
  (num -2).times {sequence << sequence[-1] + sequence [-2]}
  sequence[-1].to_s[-1].to_i
end 


p fibonacci(15) 
p fibonacci(20) 
p fibonacci(100) # => 4202692702.....8285979669707537501















# # def fibonacci(num)
# #   return 1 if num  <= 2 
# #   num = fibonacci(num - 1) + fibonacci(num - 2 )
# # end 


# # def fibonacci number
# #   first, last = [1, 1]
# #   3.upto number do 
# #     first, last = [last, first + last]
# #   end 
# #   last
# # end 

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# # def fibonacci_last num 
# #   num = fibonacci(num) 
# #   num.to_s[-1].to_i
# # end 

# # p fibonacci(1000000)
# # p "–––––––––"
# p fibonacci_last(100000000)        # -> 0  (the 15th Fibonacci number is 610)
# # p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# # p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# # p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# # p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# # p fibonacci_last(123456789) # -> 4
# # p fibonacci(15) 


# # fibonacci(1) == 1
# # fibonacci(2) == 1
# # fibonacci(3) == 2
# # fibonacci(4) == 3
# # fibonacci(5) == 5
# # fibonacci(12) == 144
# # fibonacci(20) == 6765

# # def sum(n)
# #   return 1 if n == 1
# #   n + sum(n - 1)
# # end

# # p sum (20)