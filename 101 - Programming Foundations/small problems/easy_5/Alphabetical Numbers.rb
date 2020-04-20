=begin
Write a method that takes an Array of Integers between 0 and 19, 
and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:
=end

# input is an array. output is an array. 

# to create a hash with key being number and english word version being its value. 
# or do something tricky with array indexs 'zero' is at index 0 for example. 

# Cause order doesn't matter of the numbers. so I could sort and the map to a new array using the num as the index. 

# then sort that array. 

# 

WORD_ARRAY = %w(zero one two three four five six seven eight nine
                ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen )

def alphabetic_number_sort(array)
  results = []
  results = array.sort_by do |num|
    WORD_ARRAY[num]
  end
  p results
end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]










# WORD_PAIRS = {0 => 'zero', 1 => 'one',2 =>'two', 3=>'three', 4=>'four',5=> 'five',6 =>'six',7 =>'seven',8 =>'eight',9 =>'nine',10 =>'ten',11 =>'eleven',12 =>'twelve',
# 13=>'thirteen',14 =>'fourteen',15 =>'fifteen',16=> 'sixteen',17=>'seventeen',18 =>'eighteen',19 =>'nineteen'}




# def alphabetic_number_sort(array)
#   new_array = array.map do |number|
#     WORD_PAIRS[number]
#   end 
#   new_array.sort 
# end 


# p alphabetic_number_sort((0..9).to_a)