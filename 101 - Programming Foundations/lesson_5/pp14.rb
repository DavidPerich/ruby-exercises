hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
array = []

hsh.map do |item, details|
  if details[:type] == "fruit"
    array << details[:colors].map {|x| x.capitalize}
  elsif details[:type] == "vegetable" 
    array << details[:size].upcase
  end 
end 

p array 

   

#goal – [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
