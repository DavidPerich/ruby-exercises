=begin 
Write a method that takes a first name, a space, and a last name passed as a single String argument, 
and returns a string that contains the last name, a comma, a space, and the first name.

Examples
=end 
# # input a string - output a stirng. 
#   split name into an array 
#   reverse name
#   join with a comma 

def swap_name(string) 
 p  string.split.reverse.join(", ")
end 

p swap_name('Joe Roberts') == 'Roberts, Joe'