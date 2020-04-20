def palindrome? string
   string = string.downcase.delete ('^a-z0-9')
   string == string.reverse
end 

p palindrome?('madam') == true
p palindrome?('Madam') == true           # (case does not matter)
p palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p palindrome?('356653') == true
p palindrome?('356a653') == true
p palindrome?('123ab321') == false