# Chapter 14

# Better Profiling

$ON = true

def profile(block_description, &block)
  if $ON
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile "25_000 doublings" do
  number = 1
  25000.times do
    number += number
  end
  puts "#{number.to_s.length} digits"
end

profile "count to a million" do
  number = 0
  1_000_000.times do
    number += 1
  end
end
