# Bubble Sort is one of the simplest sorting algorithms available. It isn't an efficient algorithm, but it's a great exercise for student developers. 
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. On each pass, each pair of consecutive elements is compared. 
# If the first of the two elements is greater than the second, then the two elements are swapped. 

# This process is repeated until a complete pass is made without performing any swaps; at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without making any swaps; at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm as well as a minor optimization technique, see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument, and sorts that Array using the bubble sort algorithm as just described. Note that your sort will be "in-place"; 
# that is, you will mutate the Array passed as an argument. You may assume that the Array contains at least 2 elements.

# Examples

# procedure bubbleSort( A : list of sortable items )
#     n = length(A)
#     repeat
#         swapped = false
#         for i = 1 to n-1 inclusive do
#             /* if this pair is out of order */
#             if A[i-1] > A[i] then
#                 /* swap them and remember something changed */
#                 swap( A[i-1], A[i] )
#                 swapped = true
#             end if
#         end for
#     until not swapped
# end procedure

require 'pry'

def bubble_sort!(array)
  swapped = array.dup 
  until swapped.all? {|x| x == false} do
    for i in 1..(array.size) do 
      case array[i - 1] <=> array[i] 
      when 1 
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped[i - 1] =  true
      else
        swapped[i - 1] = false 
      end 
      array
    end
  end
end 

# I made mine way to complicated. What I really needed to do was have two loops. One which just handled checking if it was swapped or not. 
#The main thing I got wrong was that my methods moved through the array straight away. It should have only moved on if the array[index -1 ] was in its right positon.see bwlow

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       next if array[index - 1] <= array[index]
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end


array = [5, 3]
bubble_sort!(array)
p array 
p array == [3, 5]
array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)