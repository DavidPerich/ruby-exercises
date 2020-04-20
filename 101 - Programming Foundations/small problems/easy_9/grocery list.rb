=begin 
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.
=end 


def buy_fruit(array)
  results = []
  array.each do |sub_array|
    sub_array[1].times {results << sub_array[0]} 
  end
  results.flatten
end 

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]



# input is an array of arrays – the sub arrays contain a fruit and the number of that fruit. Output - is an array of strings. 

# Problem is – return an array of the fruits. the fruits should appear in the new array the number of times that is shown in each sub array. 

# initialise results array
# iterate through the array
# for each sub array 
# number.times the string to the results array. times * string to the sub array
# return the results array. 















# def buy_fruit array
#   results = []
#   array.each do |fruit, number| 
#     number.times {|x| results << fruit}
#   end 
#   results
# end  


# =begin 
# their solution is nice. Originally I tried to do fruit * number. But that resulted in applesapplesapples. 

# Instead they did this: 

# def buy_fruit(list)
#   list.map { |fruit, quantity| [fruit] * quantity }.flatten
# end

# So it is multiplying the array 3 times. They als ouse map which I need to get better at. 
# =end

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

# p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
#   ["apples", "apples", "apples", "orange", "bananas","bananas"]