# Chapter 7

# Leap Years

puts "How many leap years between two years:"
puts ">> Please enter a starting year"
starting_year = gets.chomp.to_i
puts ">> Please enter an ending year"
ending_year = gets.chomp.to_i
count = starting_year
leap_years = 0

while count <= ending_year
  if (count % 4 == 0)
    leap_years += 1
    if (count % 100 == 0) && (count % 400 != 0)
      leap_years -= 1
    end
  end
  count += 1
end

puts "There are #{leap_years} leap years between #{starting_year} and #{ending_year}"
