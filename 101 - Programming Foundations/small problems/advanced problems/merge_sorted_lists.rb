# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# Examples:


#input two sorted arrays. cannot use sort.

def merge(arr1, arr2)
  array1, array2 = arr1.clone, arr2.clone
  results = []
  until array1.empty? || array2.empty?
    case array1.first <=> array2.first
    when (-1 || 0) then results << array1.shift
    when 1 then  results << array2.shift
    end
  end
  results + array1 + array2
end

p merge([1, 5, 9], [2, 6, 8])
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]