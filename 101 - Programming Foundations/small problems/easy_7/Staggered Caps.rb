=begin
Write a method that takes a String as an argument, 
and returns a new String that contains the original value using 
a staggered capitalization scheme in which every other character is capitalized,
and the remaining characters are lowercase. 
Characters that are not letters should not be changed, 
but count as characters when switching between upper and lowercase.

move through an array of the strings changing stopping on odd to check 
if it is a letter and then switching case if it is 
  
=end 

# input is a string. output is a new string
# problem is to capitliase every other character in a string. 
#   create an array from our string 
#   iterate through each with index 
#   with each character check if it its a letter.
#   if it and its index is even then uppercase
#   otherwise lowercase 
# end 
# else 
#   char 
# end 

# return the array.joined

def staggered_case(string)
  array = string.chars 
  array.each_with_index do |char, index|
    if char =~ /[a-z]/i && index.even? 
      char.upcase!
    elsif char =~ /[a-z]/i && index.odd?
      char.downcase! 
    else 
      char
    end 
  end
  array.join
end


p staggered_case('I Love Launch School!')


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'










# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end


p staggered_case('I Love Launch School!')


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'