=begin

Write a method that takes an Array of numbers and then returns the sum of the sums
of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

=end 

# input is an array. output is integer. 
#   initialise a results array
#   until array is empty 
#   shift first value in the array to results 
#   results = results.sum 
# end 
# return the results. # 

def sum_of_sums(array)
  results = 0
  until array == [] 
    results += array.shift 
  end
  p results
end 



p sum_of_sums([1, 5, 7, 3])
p sum_of_sums([1, 2, 3, 4, 5])
p sum_of_sums([3, 5, 2])
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35











# require "pry" 
# def sum_of_sums array
#   results = 0
#   array.each_index do |index|
#     results += array[0..index].sum
#   end 
#   results
# end 



# p sum_of_sums([1, 5, 7, 3])
# p sum_of_sums([1, 2, 3, 4, 5])
# p sum_of_sums([3, 5, 2])
# p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) == 4
# p sum_of_sums([1, 2, 3, 4, 5]) == 35