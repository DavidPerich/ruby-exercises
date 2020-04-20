
=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

=end 

# input – string. output is a string – which is hte middle character or characters of the arguement. 
# problem – if it has an odd length. return the size / 2 + 1 character
# if the string has an even length then return size / 2 character + size / 2 + 1 charcter

def center_of(string)
  size = string.size
  case 
  when size.odd? then string[size / 2]
  when size.even? then string[size/2 - 1] + string[size/2]
  end
end 


p center_of('Launchschool')

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'











# def center_of string
#   results = []
#   array = string.chars 
#   if array.size.odd? 
#     results << array[array.size / 2]
#   else 
#     results << array[(array.size / 2) - 1 ] << array[array.size / 2] 
#   end 
#   results.join 
# end 
