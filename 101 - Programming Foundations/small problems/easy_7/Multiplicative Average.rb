=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together,
divides the result by the number of entries in the Array,
and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:

input is an array. output is a float rounded to three decimal placs 
Problem – find product of the array.
convert to float
Divide that by size of the array. 
print the result rounded to 3

things to check 
syntax for rounding a float. 

=end

def show_multiplicative_average(array)
 sprintf("%.3f", (array.inject(:*).to_f / array.size))
end 

p show_multiplicative_average([3, 5])


p show_multiplicative_average([6])

p show_multiplicative_average([2, 5, 7, 11, 13, 17])













def show_multiplicative_average array
  (array.inject(:*) / array.length.to_f).round(3)
end

