# # The following list contains the names of individuals who are pioneers 
# the field of computing or that have had a significant influence on the field
# The names are in an encrypted form, though, using a simple (and incredibly weak)
# form of encryption called Rot13.
# Write a program that deciphers and prints each of these names .

# the problem each letter has been rotated 13 places in the alphabet

# create a collection with each letter. 
# For each character in the string map it to the 13- letter it should be. 
require 'pry'

def rot13(string) 
  results = string.chars.map {|char| char.downcase}
  alph = ("a".."z").to_a
  string.gsub! do |char|
    alph.index(char) ?  alph[(alph.index(char) - 13)] : char
  end
  results.join.capitalize
end 


# def rot13(str)
#   alphabet = ("a".."z").to_a
#   result = []
#   str.each_char {|char| result << char.downcase}
#   result.map! do |letter|
#     if alphabet.index(letter)
#       alphabet[(alphabet.index(letter) - 13)]
#     else 
#       letter 
#     end
#   end
#   result.join.capitalize
# end


p rot13('Nqn Ybirynpr')
p rot13 'Tenpr Ubccre'
p rot13 'Nqryr Tbyqfgvar'
p rot13 'Nyna Ghevat'
p rot13 'Puneyrf Onoontr'
p rot13 'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv'
















