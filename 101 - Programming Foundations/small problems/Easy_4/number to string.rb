DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9  => '9'
}

def integer_to_string(num)
  digits = num.digits.map {|char| DIGITS[char]}
  digits.reverse.join
end 
  
# p integer_to_string(5000) == 5000
# p integer_to_string(0) 
# p integer_to_string(12345) 

# if less than or equal to 0 then method 
# else method . prepend ('+')

def signed_integer_to_string(num)
  if num == 0 
    integer_to_string(num)
  elsif num < 0 
    integer_to_string(-num).prepend('-')
  else 
    integer_to_string(num).prepend('+')
  end 
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'