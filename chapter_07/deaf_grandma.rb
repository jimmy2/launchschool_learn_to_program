# Chapter 7

# Deaf grandma

puts "Say something to grandma..."

reply = "initial"
while reply != reply.upcase
  reply = gets.chomp
  break if reply == reply.upcase
  puts "HUH?! SPEAK UP, SONNY"
end

puts "NO, NOT SINCE #{rand(1930..1950)}"

