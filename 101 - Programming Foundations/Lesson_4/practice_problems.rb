=begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
else
  # other exception
ensure
  # always executed
end#pp1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = flintstones.collect do |x|
  [x, flintstones.index(x)]
end 

p hash.to_h


# pp 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
family_age = 0

ages.each do |person, age|
  family_age += age 
end 

p family_age


# pp3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! do |x,y|
  y < 100 
end 

p ages

#pp4

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
youngest = ages.min_by(&:last)
p youngest 

or ages.values.min 

#p5 
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
be = flintstones.select {|x| x.start_with? "Be"}
p be 

 
#p6 

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map {|x| x.slice! 3..10 }
p flintstones


#pp7 

statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result 



#pp9 
words = "the flintstones rock"
array = words.split " " 
capital = array.each {|x| x.capitalize! }
p capital.join " " 

=end

# pp10 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#iterate on the hash 
# check which age range the key: age fits in
# add new value :group 
require 'pry' 
munsters.each do |name, details|
  case details ['age']
  when 0...18 
    details['group'] = 'kid'
  else
  end 
end 

  
p munsters 
  