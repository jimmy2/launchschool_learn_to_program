# Chapter 12

# Happy Birthday

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born? (1-12)"
month = gets.chomp.to_i

puts "What day were you born? (1-31)"
day = gets.chomp.to_i

birthdate = Time.local("#{year}, #{month}, #{day}")

time_now = Time.now
age = 1

while Time.local(year + age, month, day) <= time_now
  puts "Spank! #{age}"
  age += 1
end

