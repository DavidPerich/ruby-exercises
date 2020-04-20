=begin
=end 

# question 2 – informal greeting is a reference to the original object. So mutating it with 'there' modifies the object called. The original object was changed. The shovel modifies the original object. We could have used += to avoid this 

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# question 3 –
# A – they all end up the same? Wrong? They are all similarly named variables. 
#b – they are just new variables with the same name. So the numbers will  be the orignial 
#c) one is two, two is three, three is one. 

# question 4 

# not returning a false condition 
# not checking to see if ip address 4 components to the ip address. 



def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if is_an_ip_number?(word) && word.size == 4 
      true 
    else 
      false 
    end 
  end
end


