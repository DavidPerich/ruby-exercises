=begin 
Write a method that takes a string, and then returns a hash that contains 3 entries:
one represents the number of characters in the string that are lowercase letters, 
one the number of characters that are uppercase letters, and one the number of characters that are neither.
=end


# input a string. Output is a hash with three entries. 
# Problem – count the number of lower case, upper case and special characters in a string. 
# need to be able to check if somehting is lowercase
# need to be able to check if something is uppercase 
# need to be able to check if something is not a letter. 


# array of uppercase 
# array of lowercase – alternative is check regular expression
# hash which has three symbols – lowercase, uppercase, neither all with a starting value 0
#   create an array from the characters in the string
#   iterate through each element in the array
#   initalise a conditional 
#   if the element appears in upppercase add to the count for uppercase
#     if it appears for lowercase add to the count for lowercas
#     else add to the neither. 

LETTERS = ("a".."z").to_a 

def letter_case_count(string)
  hash = {uppercase: 0, lowercase: 0, neither: 0}
  string.chars.each do |char|
    if LETTERS.include? char 
      hash[:lowercase] += 1
    elsif LETTERS.include? char.downcase
      hash[:uppercase] += 1 
    else 
      hash[:neither] +=1 
    end 
  end
  hash
end 




p letter_case_count('abCdef 123')
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }








# LETTERS = ("a".."z").to_a 

# def letter_case_count string 
#   hash = {:lowercase => 0, :uppercase => 0, :neither => 0  }
#   string.each_char do |character|
#     if LETTERS.include? character
#       hash[:lowercase] += 1 
#     elsif LETTERS.include? character.downcase
#       hash[:uppercase] +=1 
#     else 
#       hash[:neither] += 1 
#     end 
#   end 
#   hash
# end 
      
# p letter_case_count('abCdef 123')

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }