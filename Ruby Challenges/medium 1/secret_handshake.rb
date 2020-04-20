# Write a program that will take a decimal number, and convert it to the appropriate sequence of events for a secret handshake.

# There are 10 types of people in the world: Those who understand binary, and those who don't. 
# You and your fellow cohort of those in the "know" when it comes to binary decide to come up with a secret "handshake".

# 1 = wink
# 10 = double blink
# 100 = close your eyes
# 1000 = jump


# 10000 = Reverse the order of the operations in the secret handshake.
# handshake = SecretHandshake.new 9
# handshake.commands # => ["wink","jump"]

# handshake = SecretHandshake.new "11001"
# handshake.commands # => ["jump","wink"]
# The program should consider strings specifying an invalid binary as the value 0.
 require 'pry'

class SecretHandshake
  HANDSHAKES = {10000 => 'reverse', 1000 => 'jump', 100 => 'close your eyes', 10 => 'double blink', 1 => 'wink'}
  
  def initialize(decimal)
    @binary = decimal.to_i.to_s(2).to_i
    @results = []
  end
  
  def commands 
    return [] if @binary.zero? 
    HANDSHAKES.each_pair do |key, action|
      num, @binary = @binary.divmod(key)
      @results.unshift(action) if num.nonzero?
    end
    (@results.last == 'reverse') ? @results[0..-2].reverse : @results 
  end
end

SecretHandshake.new(31).commands

