# Chapter 12

# One Billion Seconds

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born? (1-12)"
month = gets.chomp.to_i

puts "What day were you born? (1-31)"
day = gets.chomp.to_i

puts "What hour were you born? (0-23)"
hour = gets.chomp.to_i

puts "What minute were you born? (0-59)"
minute = gets.chomp.to_i

puts "You are/were 1 billions seconds on #{Time.local(year, month, day, hour, minute) + 10**9}"
