# Write a program that will take a string of digits and give you all the possible
# consecutive number series of length n in that string.

# For example, the string "01234" has the following 3-digit series:

# - 012
# - 123
# - 234
# And the following 4-digit series:

# - 0123
# - 1234
# And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

# input string of digits. output array of arrays
require 'pry'

class Series 
  def initialize(string) 
    @string = string.chars.map(&:to_i)
  end 
  
  def slices(size)
    raise ArgumentError if size > @string.size 
    result = []
    @string.each_with_index do |item, index|
      result << @string[index..(index + size - 1)]
    end
    result.select {|item| item.size == size }
  end 
end 

x = Series.new("01234")
p x.slices(2)

    # have a string
    # returns a slice of the string starting from 0 to n 
    # moves up the index once 
    # slice must always b n length. 
    
    
    
    
    
    
    
    
    
    
    
    class Series 
  attr_reader :string
  
  def initialize(string)
    @string = string.chars.map(&:to_i)
  end
  
  def slices(n)
    raise ArguementError if n > string.size 
    results = []
    until string.size < n 
      results << string.take(n)
      string.shift
    end
    results
  end
end 

x = Series.new('01234')
series = Series.new('01234')
p series.slices()
