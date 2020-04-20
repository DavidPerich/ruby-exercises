# question 1 – doesn't mutate the array
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers


=begin - question 2
1. != means does not equal. Would use it in a comparitor 
2. no clue 
3. mutates whatever words is and only displays the 
4. unsure 
5. usually indicates a method that returns a query
6.!!  no clue. 
=end 

# question 3 
advice = "Few things in life are as important as house training your pet dinosaur."

advice.sub! 'important', 'urgent'

p advice 

# question 4 

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)
 p numbers


# question 5 
p "yeah boi" if 42.between? 10, 15
# alternative - - (10..100).cover?(42)

# question 6 

famous_words = "seven years ago..."
p "four score and" + famous_words
p "four score and #{famous_words}"

# question 7 
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }
p eval(how_deep)
p how_deep

# question 8 

flinstones = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flinstones.flatten!
p flinstones


# question 9 
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")
