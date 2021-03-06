# Using the following code, create a class named Cat that prints a greeting when #greet is invoked.
# The greeting should include the name and color of the cat. Use a constant to define the color.

class Cat
  attr_accessor :name, :colour
  
  def initialize(name, colour)
    @name = name 
    @colour = colour
  end 
  
  def greet
    puts "Hey, my name is #{name} and I'm a #{colour} #{self.class}"
  end 
  


end 

kitty = Cat.new('Sophie', 'Purple')
kitty.greet
# Expected output:

# Hello! My name is Sophie and I'm a purple cat!