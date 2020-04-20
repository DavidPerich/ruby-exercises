# Given this data structure,
# return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# input: array of arrays with different collections (integers or strings)
# output: new array, with same collections, but sorted in decending order as appropriate. 

p arr.map {|array| array.sort.reverse}