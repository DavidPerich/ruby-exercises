# Write a program that can generate the lyrics of the 99 Bottles of Beer song.
# See the test suite for the entire song.



class BeerSong 
  def verse(num)
    case  
    when num > 1 
      "#{num} bottle of beer on the wall, #{num} bottle of beer.take it down and pass it around, #{remaining(num)} more bottles of beer on the wall."
    when num == 1 
      "#{num} bottle of beer on the wall, #{num} bottle of beer.\n
      Take it down and pass it around, #{remaining(num)} more bottles of beer on the wall."
    end
  end
  
  def verses(first, last)
    
  end 
  
  def lyrics
    verses(99, 0)
  end
  
  private 
  
  def remaining(num)
    case num 
    when 1 then "no"
    else  num - 1
    end
  end 
end 



p BeerSong.new.verse(40)