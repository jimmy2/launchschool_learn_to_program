# Chapter 8

# Building and sorting an array

array = []
input = nil
puts "Type as many words you want, one per line, hit enter twice to finish..."
while input != ""
  input = gets.chomp.downcase
  array.push(input)
end

array.pop

puts "The words you entered in alphabetical order are:"
puts array.sort