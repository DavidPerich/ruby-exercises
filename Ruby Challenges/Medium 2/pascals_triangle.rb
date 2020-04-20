# Write a program that computes Pascal's triangle up to a given number of rows.

# # In Pascal's Triangle each number is computed by adding the numbers to the right
# and left of the current position in the previous row.?

require 'pry'

class Triangle 
  def initialize(limit)
    @limit = limit 
    @rows = [[1]]
  end
  
  def rows 
    loop do
      return @rows if @rows.size == @limit 
      @rows << next_row(@rows.last)
    end
  end
    
  def next_row(previous_row)
    previous_row.each_cons(2).map {|pair| pair.sum}.unshift(1).push(1)
  end
end