# Chapter 7

# Deaf grandma (extended)

puts "Say something to grandma..."

reply = "initial"
bye_count = 0

while reply
  reply = gets.chomp
  if reply == "BYE"
    bye_count += 1
  else
    bye_count = 0
  end
  break if bye_count == 3
  puts "HUH?! SPEAK UP, SONNY"
end

puts "NO, NOT SINCE #{rand(1930..1950)}"