arr = ['10', '11', '9', '7', '8']

new_array = arr.sort do |a,b|
  b.to_i <=> a.to_i
end 

p new_array