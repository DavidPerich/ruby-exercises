
=begin

Write a method that takes a string, and returns a new string in which every character is doubled.

=end 

# input is a string. output is string. 
# problem – how to double every character in index place. 

# # define a method 
# create results string 
# Call chars on the stirng to get an array 
# iterate through that array and for each character (x) add x * 2 to the results string.


def repeater(string)
  results = ""
  string.chars.each {|x| results += x * 2}
  results 
end 

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''












def repeater string
  results = []
  string.chars.each do |x|
    results << x * 2
  end 
  results.join 
end  

