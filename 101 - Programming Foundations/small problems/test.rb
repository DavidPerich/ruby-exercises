# Using the each method. write some code to output all of the vowels from the strings 

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


# start with hash. print all of the vowels from the values in the hash. 

# access each key
# access each element in the array value. 

# call each on the hash 
#   call each on the value 
#   call each_char on each string
#     print if the char is a vowel

hsh.each do |key, value|
  value.each do |word|
    word.each_char do |char|
      print char if char =~ /[aeiou]/i 
    end
  end
end 