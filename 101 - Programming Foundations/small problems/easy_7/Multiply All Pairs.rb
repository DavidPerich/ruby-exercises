=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of
numbers that can be formed between the elements of the two Arrays.
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

input will two arrays containing a list of integers. output is a new array. 

Every pair of numbers
result should be sorted. 

  initialise a results array
  iterate through each number in the first array (num1)
    iterate through the sceond array (num2)
      results << num * num2 
    end 
  end 
  sort the results array. 
=end



def multiply_all_pairs(arr1, arr2)
  results = []
  arr1.each do |num1|
     arr2.each {|num2| results << num1 * num2}
  end
 results.sort 
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]











  
# def multiply_all_pairs array1, array2 
#   result = []
#   array1.each do |x|
#     array2.each {|y| result << x * y }
#   end 
#   result.sort 
# end 


