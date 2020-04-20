=begin Write a method that will take a short line of text, and print it within a box.

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

=end 

def print_in_box(string) 
  length = string.length + 2 
  puts "+ #{"-" * length} +"
  puts "| #{" " * length} |"
  puts "| #{string}   |"
  puts "| #{" " * length} |" 
  puts "+ #{"-" * length} +"
end 

print_in_box("daviasdaslsdnhad")