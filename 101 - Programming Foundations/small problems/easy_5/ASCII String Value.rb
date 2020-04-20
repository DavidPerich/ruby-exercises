# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)


# input is a string. output is an integer (the ACSSI value of hte string)
# .ord returns ascii value of first character in a string. 

# could produce and array of characters. map the order value of each. then sum that. 

def ascii_value(string)
  string.chars.map {|char| char.ord}.sum 
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0












# def ascii_value string 
#   array = string.chars
#   array.map! do |x|
#     x.ord 
#   end
#   array.reduce(0, :+)
# end 
# =begin

# Their solution –
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end
# =end

