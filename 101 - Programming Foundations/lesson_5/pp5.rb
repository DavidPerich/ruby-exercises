# figure out the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# input hash. output an integer. 
# # problem – calculate the sum of nested hash values that are have the "gender" value of male

# Access each hash
# For each hash if the gender value  is male 
# then add its age value to the a results variable

total = 0 
munsters.each do |hash|
  hash.each do |person|
    total += person['age'] if person['gender'] == 'male'
  end 
end

p total 