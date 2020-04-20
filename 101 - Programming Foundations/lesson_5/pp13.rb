# Given the following data structure, return a new array containing
# the same sub-arrays as the original but ordered logically according to the numeric value of the odd integers they contain.

array = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# input an array. output an array
# problem: Sort the sub arrays by the odd values contained within. 
#
p array.each {|sub_array| p sub_array}

def sort_by_odd(arr)
  arr.sort_by do |sub_array|
    sub_array.select {|element| element.odd?}
  end
end


p sort_by_odd(array) == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]