def select_fruit hash, search_item
  fruits_array = []
  hash.each do |item, type| 
    next unless type == search_item
      fruits_array << item
  end 
  fruits_array 
end 

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce, "Vegetable") # => {"apple"=>"Fruit", "pear"=>"Fruit"}

