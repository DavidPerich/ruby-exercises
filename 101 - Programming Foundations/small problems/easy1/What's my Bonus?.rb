
# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
# If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# Examples:

# input – 2 arguements an int(salary) and boolean(do they get a bonus or not). output an int. 

# should be able to do this with one line conditional. 

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0 
end



puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000











# – original 

# def calculate_bonus salary, bonus_true
#   bonus_true ? salary / 2  : 0 
# end 


# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000