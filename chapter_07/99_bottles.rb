# Chapter 7

# 99 Bottles of beer on the wall

bottles = 99

while bottles > 0
  if bottles > 1
    puts "#{bottles} bottles of beer on the wall..."
  else 
    puts "#{bottles} bottle of beer on the wall..."
  end
  bottles -= 1
end