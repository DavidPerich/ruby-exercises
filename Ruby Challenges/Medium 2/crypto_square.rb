# Implement the classic method for composing secret messages called a square code.

# The input is first normalized: The spaces and punctuation are removed from the English text and the message is down-cased.

# Then, the normalized characters are broken into rows. These rows can be regarded as forming a rectangle when printed with intervening newlines.

# For example, the sentence

# If man was meant to stay on the ground god would have given us roots

# is 54 characters long.

# Broken into 8-character columns, it yields 7 rows.

# Those 7 rows produce this rectangle when printed one per line:

# ifmanwas
# meanttos
# tayonthe
# groundgo
# dwouldha
# vegivenu
# sroots
# The coded message is obtained by reading down the columns going left to right. For example, the message above is coded as:

# imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau
# Write a program that, given an English text, outputs the encoded version of that text.

# The size of the square (number of columns) should be decided by the length of the message. If the message is a length that creates a perfect square (e.g. 4, 9, 16, 25, 36, etc), use that number of columns. If the message doesn't fit neatly into a square, choose the number of columns that corresponds to the smallest square that is larger than the number of characters in the message.

# For example, a message 4 characters long should use a 2 x 2 square. A message that is 81 characters long would use a square that is 9 columns wide. A message between 5 and 8 characters long should use a rectangle 3 characters wide.

# Output the encoded text grouped by column.

# # 


# remove spaces and punctuation - 
# forming a rectangle - what does that mean?
# what is the algorithm for deciding how many elements in each array. 
# if it creates a perfect square use that - e.g 4 * 4, 3 * 3 
# if not a perfect square - chose the number of columns that corresponds to hte smallest square that is larger than the number of chracters in the mesage 
# e.g if it is 4 characters use 2x2, if its 5 to 8 it should use 3 characters wide. if it its 9 characters its 3x3 
#Output the encoded text grouped by column.

require 'pry'

class Crypto
  attr_accessor :string
  
  def initialize(string)
    @string = string.gsub(/\W/, "").downcase
    @rows
    @cyper 
  end 
  
  def normalize_plaintext
    @string
  end
  
  def plaintext_segments
    @string.scan(/.{1,#{size}}/)
  end
  
  def normalize_ciphertext
    plaintext_segments.join(" ")
  end
  
  def size 
    Math.sqrt(@string.size).ceil 
  end 
  
  def ciphertext 
    plaintext_segments
    @cyper = @rows.map.with_index do |array, index|
              @rows.map {|all_arrays| all_arrays[index]}
            end 
    @cyper.join
  end
  
end 

crypto = Crypto.new('123456789abc').normalize_ciphertext
p crypto
=begin
msemo
aanin
dnin
ndla
etlt
shui


=end

