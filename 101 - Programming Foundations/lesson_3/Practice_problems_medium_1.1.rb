=begin
# question 1 

# 10.times { |x| puts (" " * x) + "The Flintstones Rock!" }

# question 2

# 

# error beacuse you can't add integer to string 
# fix options
x = (40 + 2)
puts "the value of 40 + 2 is #{x}"

# or 
puts "the value of 40 + 2 is " + (40 + 2).to_s 

# question 3 
def factors(number)
  dividend = number
  divisors = []
  if number == 0
    puts "the number is 0 and won't work"
  else 
    begin
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end until dividend == 0
   p divisors
  end 
end

factors (20) 
factors (0) 
factors (1232) 

# question 5
limit = 15 

def fib(first_num, second_num, limit)
    while second_num < limit
      sum = first_num + second_num
      first_num = second_num
      second_num = sum
    end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"



#question 6 

def array_method(a_string_param, an_array_param)
  an_array_param << "rutabaga"
end

def string_method(a_string_param) 
  a_string_param += "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
string_method(my_string) 



puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


# question 7 

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# answer will be 34. answer is not mutated. So the only thing that is printed is 42 - 8
=end

# question 8 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters