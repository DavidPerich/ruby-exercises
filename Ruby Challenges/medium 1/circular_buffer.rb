# A circular buffer, cyclic buffer or ring buffer is a data structure that uses a single, fixed-size buffer as if it were connected end-to-end.

# A circular buffer first starts empty and of some predefined length. For example, this is an empty 7-element buffer:

# [ ][ ][ ][ ][ ][ ][ ]
# Assume that a 1 is written into the middle of the buffer (exact starting location does not matter in a circular buffer):

# [ ][ ][ ][1][ ][ ][ ]
# Then assume that two more elements are added, or written to the buffer — 2 & 3 — which get appended after the 1:

# [ ][ ][ ][1][2][3][ ]
# If two elements are then read, or removed from the buffer, the oldest values inside the buffer are removed. The two elements removed, in this case, are 1 & 2, leaving the buffer with just a 3:

# [ ][ ][ ][ ][ ][3][ ]
# If the buffer has 7 elements then it is completely full:

# [6][7][8][9][3][4][5]
# When the buffer is full an error will be raised, alerting the client that further writes are blocked until a slot becomes free.

# The client can opt to overwrite the oldest data with a forced write. In this case, two more elements — A & B — are added and they overwrite the 3 & 4:

# [6][7][8][9][A][B][5]
# Finally, if two elements are now removed then what would be returned is not 3 & 4 but 5 & 6 because A & B overwrote the 3 & the 4 yielding the buffer with:

# [ ][7][8][9][A][B][ ]


require 'pry'



class CircularBuffer 
  def initialize(size) 
    @max = size
    @buffer = []
  end 
  
  def read 
    @buffer.empty? ? raise(BufferEmptyException) : @buffer.shift
  end 
  
  def write(num)  
    return if num.nil? 
    full?  ? raise(BufferFullException) : @buffer << num
  end
  
  def full? 
    @buffer.size == @max
  end
  
  def write!(num)
    return unless num
    read if full? 
    write(num)
  end 
  
  def clear 
    @buffer = []
  end 
  
  class BufferEmptyException < StandardError; end 
  class BufferFullException < StandardError; end  
end


  
buffer = CircularBuffer.new(1)
buffer.write '1'
p buffer.read