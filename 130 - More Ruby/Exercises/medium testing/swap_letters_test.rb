require 'minitest/autorun'
require_relative 'swap_letters.rb'
require 'pry'

class SwapLettersTest < Minitest::Test
  def setup
    @file = File.open('text', 'r')
    @text = Text.new(@file.read)
  end
  
  def test_swap 
    assert_equal("Loram ipsum dolor sit amat, consactatur adipiscing alit. Cras sad vulputata ipsum.
Suspandissa commodo sam arcu. Donac a nisi alit. Nullam agat nisi commodo, volutpat
quam a, vivarra mauris. Nunc vivarra sad massa a condimantum. Suspandissa ornara justo
nulla, sit amat mollis aros sollicitudin at. atiam maximus molastia aros, sit amat dictum
dolor ornara bibandum. Morbi ut massa nac loram tincidunt alamantum vitaa id magna. Cras
at varius mauris, at pharatra mi." ,@text.swap('e', 'a'))
  end 
  
  def teardown
    @file.close 
  end 

end


































# require 'minitest/autorun'
# require_relative 'swap_letters'

# class TextTest < Minitest::Test
#   def setup
#     @file = File.open('text', 'r')
#   end

#   def test_swap
#     text = Text.new(@file.read)
#     actual_text = text.swap('a', 'e')
#     expected_text = <<~TEXT
#     Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
#     Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
#     quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
#     nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
#     dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
#     et verius meuris, et pheretre mi.
#     TEXT

#     assert_equal expected_text, actual_text
#   end
  
#   def test_word_count
#     text = Text.new(@file.read)
#     assert_equal()
#   end 

#   def teardown
#     @file.close
#   end
# end