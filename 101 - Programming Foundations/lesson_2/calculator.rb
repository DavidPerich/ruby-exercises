require 'yaml' 
MESSAGES = YAML.load_file('messages.yaml')

def prompt message 
  puts "=> #{message} "
end 

input = ""

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_num? (num)
  integer?(num) || float?(num)
end

  
def operation_to_message (operator) 
  case operator 
   when '1'
          "Adding"
    when '2'
          "Subtracting"  
    when '3'
          "Multiplying"  
    when '4'
          "dividing"  
  end
end 

def number? num 
  if num.to_i !=0 || num_to.f != 0 
    true 
  else 
  end 
end 
  
num1 = "" 
num2 = "" 
name = ""
operator = ""
input = ""

prompt(MESSAGES['welcome'])

loop do 
  name = gets.chomp 
  
  if name.empty? 
    prompt(MESSAGES['valid_name' ]) 
  else 
    break 
  end
end

prompt "welcome #{name}"
loop do # main loop 

loop do 
prompt(MESSAGES['first_number' ])
num1 = gets.chomp 
  if valid_num? (num1) 
   break 
  else 
    prompt(MESSAGES['number_error']) 
  end 
end 

loop do
prompt(MESSAGES['second_number' ])
num2 = gets.chomp 
  if valid_num? (num2) 
   break 
  else 
   prompt(MESSAGES['number_error']) 
  end 
end

operator_prompt = <<-MSG 
What operation would you like to perform? 
  1) addition, 
  2) subtraction   
  3) multiplaction 
  4) division
MSG

prompt (operator_prompt)

loop do
  operator = gets.chomp 
  if %w(1 2 3 4).include? operator
    break 
  else 
    prompt " #{operation_to_message(operator)} the two numbres together "
  end
end 





result =  case operator 
          when '1'
            result = num1.to_i + num2.to_i
          when '2'
            result = num1.to_i - num2.to_i
          when '4'
            result = num1.to_f / num2.to_f
          when '3'
            result = num1.to_i * num2.to_i
          end
          
 prompt(MESSAGES['operation_message'])

prompt result
    
prompt(MESSAGES['go_again'])
  answer = gets.chomp 
  break unless answer.downcase == 'y'
end 

prompt(MESSAGES['thanks'])
