# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
# You may assume that the strings are of different lengths.

# Examples:

# input two strings. output one string
# problem 
# define a method with two arguements
# conditional if areguement.size > arg2 then str1, str2 = arg2, arg1 else 

# str1 + str 2 + str1 
# end 

def short_long_short(arg1, arg2)
  arg1.length > arg2.length ? (arg2 + arg1 + arg2) : (arg1 + arg2+ arg1)
end 



p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
























# def short_long_short string1, string2
#   if string1.length < string2.length 
#     string1 + string2 + string1 
#   else 
#     string2 + string1 + string2
#   end 
# end 

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# p short_long_short('abc', 'defgh')
# p short_long_short('abcde', 'fgh') 
# p short_long_short('', 'xyz')