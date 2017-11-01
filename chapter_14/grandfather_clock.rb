# Chapter 14

# Grandfather clock

def clock_count(&block)
  current_hour = Time.new.hour
  if current_hour >= 13
    current_hour -= 12
  end
  if current_hour == 0
    current_hour += 12
  end
  current_hour.times do
    block.call
  end
  puts "Finished this method"
end

clock_count do
  puts "DONG!"
end