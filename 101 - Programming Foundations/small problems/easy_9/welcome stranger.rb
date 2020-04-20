=begin 
Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. 
The hash will contain two keys, :title and :occupation, and the appropriate values.
Your method should return a greeting that uses the person's full name, and mentions the person's title.

Example:

=end 

# input – array, hash. array will contain 2 or more elements to produce a name. hash will contain title and occupation keys and values. 
# problem – create a greeting that uses name and title. 

# steps
# define method
# write a greeting string with theree interpolations
# 1. for joining the name together. 
# 2. for accessing the title
# 3. for accessing the occupationfor string interpolation
# print

def greetings(array, hash)
  name = array.join(" ")
  title, occupation = hash[:title], hash[:occupation]
 puts "Hi #{name}! Nice to have a #{title} #{occupation} around"
end 

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.











# def greetings array, hash 
#   puts "Hello #{array.join ' '}! Nice to have a #{hash[:title]} #{hash[:occupation]} around!"
# end 

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# # 