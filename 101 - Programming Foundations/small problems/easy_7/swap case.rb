=begin
Write a method that takes a string as an argument and returns 
a new string in which every uppercase letter is replaced by its lowercase version, 
and every lowercase letter by its uppercase version. All other characters should be unchanged.
can't use swap case
=end 

# input is a string. output is a string. 
# problem – for each character in the string swap its case. 
#   array = string split into characters. 
#   iterate through the array of characters 
#     start a conditional 
#     if the character appears letters then its a downcase character so make it upcase 
#   else if the chacter with dowcase called on it appears in letters then it is an upcase character. 
#   else leave it be. 
# join back the array to a stnrg. 

LETTERS = ("a".."z").to_a 

def swapcase(string)
  array = string.chars 
  array.map! do |char|
    if LETTERS.include? char 
      char.upcase
    elsif LETTERS.include? char.downcase
      char.downcase 
    else 
      char 
    end 
  end 
  array.join
end 



p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'











def swapcase string
  characters = string.chars.map do |char|
    if char =~ /[a-z]/
     char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else 
      char
    end 
  end 
  characters.join
end 

p swapcase('CamelCase')
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'