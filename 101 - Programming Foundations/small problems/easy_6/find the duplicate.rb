=begin Given an unordered array and the information that exactly one value in the array occurs
twice (every other value occurs exactly once), how would you determine which value occurs twice? 
Write a method that will find and return the duplicate value that is known to be in the array.
=end 

# input array. output is an integer. 
# problem – find the integer in the array that has a count of 2. 

# define a method that takes on arguement which is our array. 
# call find all on the array and pass a block that returns if the count of that value in the array is == to two. 
# end 

def find_dup(array)
  p array.find {|x| array.count(x) == 2}
end 



# def find_dup(array) 
#   hash = Hash.new(0)
#   array.each do |x|
#     hash[x] += 1
#   end 
#   hash.each {|key, value| return key if value == 2} 
# end 




# print find_dup([1, 5, 3, 1])
p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

















# def find_dup array 
#   array.find_all { |e| array.count(e) > 1 }.uniq
# end 

# print find_dup([1, 5, 3, 1])
# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73