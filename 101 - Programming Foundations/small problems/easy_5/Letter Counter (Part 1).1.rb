# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples

# input a string. output a hash. 
# count the number of different word sizes and capture that in a hash. 

# define a method
# initialise an empty  hash 
# create an array of the words in the string 
# iterate through and each time a certain count appears add that as a new key to the hash plus 1 to value. 
# end
# return the hash. 

def word_sizes(string)
  result = {}
  array = string.split(" ")
  array.each do |word|
    result[word.size] += 1 unless result[word.size] == nil 
    result[word.size] = 1 if result[word.size] == nil
  end
  result
end

p word_sizes('Four score and seven.') 

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
















# def word_sizes string
#   hash  = Hash.new
#   word_array = string.split " " 
#   word_array.each do |x|
#     count = x.length 
#     if hash.include? count 
#       hash[count] +=1 
#     else 
#       hash[count] = 1 
#     end 
#   end 
# end 


# =begin
# Their solution 
# def word_sizes string
#   hash  = Hash.new(0)
#   string.split.each do |x|
#       hash[x.size] +=1 
#     end 
#   hash
# end 
# =end




