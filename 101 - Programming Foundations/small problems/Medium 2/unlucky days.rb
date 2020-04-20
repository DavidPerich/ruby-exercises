# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar)
# and that it will remain in use for the foreseeable future.

# Examples:

require 'date'

def friday_13th(year)
  count = 0 
  Date.new(year, 01, 1).upto(Date.new(year, 12, 31)) do |date| 
     count += 1 if date.friday? && date.day == 13
  end
    count
end 
p friday_13th(2019)
p friday_13th(2015)
p friday_13th(1986)
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2