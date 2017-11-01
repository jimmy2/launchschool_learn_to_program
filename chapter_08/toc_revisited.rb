# Chapter 8

# Table of Contents, revisited

line_width = 40

puts "Table of Contents".center(line_width)

array = [["Getting Started", 1], ["Numbers", 9], ["Letters", 13]]

puts array

puts "Chapter 1:  #{array[0].first}".ljust(line_width) + "page  #{array[0].last}".rjust(line_width)
puts "Chapter 2:  #{array[1].first}".ljust(line_width) + "page  #{array[1].last}".rjust(line_width)
puts "Chapter 3:  #{array[2].first}".ljust(line_width) + "page  #{array[2].last}".rjust(line_width)