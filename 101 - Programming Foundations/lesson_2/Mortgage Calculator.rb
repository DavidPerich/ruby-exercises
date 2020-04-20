require 'yaml' 
require "pry"

MESSAGES = YAML.load_file('mortgage_messages.yaml')

def prompt message # defines the prompt message
  puts "=> #{message}"
end 

def num_valid? num # checks if principal is greater than zero and is a number
  num.to_i > 0 
end 

def interest_valid? annual_interest# checks if the interest rate (as a float) is valid
 annual_interest.to_f > 0 
end 

def years_valid? years # making sure years are valid 
  years.to_f > 0 
end 

def years_to_months years   
  years.to_f * 12 
end 

def monthly_payment (principal, monthly_interest, months)  ## getting the monthly repayment
  principal * (monthly_interest / (1 - (1 + monthly_interest)**(-months)))
end 

def annual_to_monthly_interest  annual_interest
  annual_interest.to_f / 12 
end 


#declaring things outside of loop scope
name = ""
principal = ""
annual_interest = ""
years = "" 
months = ""

loop do 
prompt(MESSAGES['intro'])
prompt(MESSAGES['welcome'])

loop do 
  name = gets.chomp 
 if name.empty?
   prompt (MESSAGES['valid_name'])
 else 
   break
 end 
end 

prompt "welcome #{name}. How much is your loan?"

loop do 
  principal = gets.chomp 
  if num_valid? principal
    break 
  else 
    prompt(MESSAGES['number_error']) 
  end 
end 

prompt (MESSAGES['interest_rate'])
loop do 
  annual_interest = gets.chomp 
  if interest_valid? annual_interest
    break 
  else 
    prompt(MESSAGES['interest_error'])
  end 
end 

prompt(MESSAGES['loan_years'])
loop do 
  years = gets.chomp 
  if years_valid? years 
    break 
  else 
    prompt(MESSAGES['years_error'])
  end 
end 

annual_interest = annual_interest.to_f / 100 
principal = principal.to_f
months = years_to_months (years) 
monthly_interest = annual_to_monthly_interest (annual_interest)

p "Your monthly payment is $#{monthly_payment(principal,monthly_interest,months)}"

  prompt("Another calculation? (Type Yes or No ")
  answer = gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
# prompt "wow you are going to have to pay back $#{principal} over #{months} months at #{monthly_interest}% monthly interest. You are screwed"


  

  #i'll need a formula to split off the % from the string. and make sure it stays as a non-0 float. 
  #i'll nede a method 






