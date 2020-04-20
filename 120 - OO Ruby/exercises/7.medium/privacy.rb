# Consider the following class:

class Machine
  def read_switch 
    switch
  end 
  
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  private 
  
  attr_accessor :switch
  
  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

x = Machine.new 
x.start 
p x.read_switch
x.stop
p x.read_switch
# Modify this class so both flip_switch and the setter method switch= are private methods.