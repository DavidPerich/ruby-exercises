# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:

# Their solution – keeps track of how many of each parenthesis. If a ) occurs before a ( then then the value will be -1 and the loop will break. 
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).



 p balanced?('What (is) this?')