# quesiton 1 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.include? 'spot'

# q2 

munsters_description = "The Munsters are creepy in a good way."
p munsters_description.capitalize
p munsters_description.swapcase
p munsters_description.downcase
p munsters_description.upcase

# question 3 

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
p ages 

# quesiton 4

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match 'Dino'

# question 5 
#flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#p flinstones

# question 6 and 7 

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flinstones << "Dino" << "Hoppy" 

p flinstones

# question  8 

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice!(0, advice.index('house'))
p advice 

# question 9  
statement = "The Flintstones Rock!"
p  statement.count('t')

# question 10

title = "Flintstone Family Members"
p title.center(60)