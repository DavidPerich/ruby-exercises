
#problem

# iterate backwards through an array.
# add each sub array to a string
# if the sub array has one element preceed it with "This is"
# if it has more than one element then only the first element gets the This is

#   The next elements just get /n

#   /n at the end of each array.

require 'pry'
class House

  def self.recite
    new.recite
  end

  def recite
    opening = "This is "
    result = []
    array = pieces.reverse

    array.each.with_index do |line, index|
      return "This is " + pieces.last[0] + ".\n" if n == 1
      else
        index.downto(0) do |x|
          result << opening + line.first
          result << line.last + " " + array[x-1].last
        end
      end
        result << "\n"
      end
    binding.pry
  end


  private

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

House.recite