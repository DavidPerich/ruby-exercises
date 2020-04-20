

# inputs – two booleans
# output – one boolean

# if first statement before an || is true it returns true. it doesn't check the second arguement




# define method
# return false if both are false or true
# return true if 


def xor?(arg1, arg2)
  return false if arg1 == arg2 
  return true if arg1 || arg2
end 










# def xor? x, y 
#   if x && !y 
#     true 
#   else !x && y 
#     true 
#   end
# end 

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false