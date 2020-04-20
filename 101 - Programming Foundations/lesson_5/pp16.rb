def uuid 
  arr = ('a'..'z').to_a + ('0'..'9').to_a
  8.times{print arr.sample}
  print "-"
  4.times{print arr.sample}
  print "-"
  4.times{print arr.sample}
  print "-"
  4.times{print arr.sample}
  print "-"
  12.times{print arr.sample}
end 

p uuid

## my method doesn't return the UUID – only prints it. Their solution 

=begin
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
=end 
