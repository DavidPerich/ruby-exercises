# Create a clock that is independent of date.

# You should be able to add and subtract minutes to it.
# Two clocks that represent the same time should be equal to each other.

# Test suite:
require 'pry'

class Clock 
  MINUTES_IN_HOUR = 60
  HOURS_IN_DAY = 24
  
  def initialize(hours=0, minutes=0)
    @hours = hours
    @minutes = minutes
  end
  
  class << Clock 
    alias_method :at, :new
  end 
  
  def to_s
    # binding.pry 
    format('%02d:%02d', @hours, @minutes)
  end
  
  def +(minutes) 
    add_hours, add_minutes =  minutes.divmod(MINUTES_IN_HOUR)
    @hours += add_hours
    @minutes += add_minutes
  end
  
  def -(minutes)
    add_hours, add_minutes =  minutes.divmod(MINUTES_IN_HOUR)
    # binding.pry
    @hours -= add_hours
    @minutes -= add_minutes
  end
  
end 

clock = Clock.at(10) + 61
# binding.pry
p clock.to_s #11:01