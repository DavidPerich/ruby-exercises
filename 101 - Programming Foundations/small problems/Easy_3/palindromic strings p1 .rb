def palindrome? string
   string == string.reverse
end 

# p 'madam'.reverse



# p palindrome?('madam') 
# p palindrome?('Madam')        # (case matters)
# p palindrome?("madam i'm adam")  # (all characters matter)
# p palindrome?('356653')


def real_palindrome?(string)
  string.downcase! 
  string = string.gsub(/[^0-9a-z]/i, '')
  palindrome? string
end 




p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# char =~ /[a-z]/i 

# need a new string that is downcase and remove non alpha numeric chacters
# run palindrome on that. 

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p "–-"
p palindromic_number?(0034543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true


=begin
Convert number to a string
use palindrome in it

=end