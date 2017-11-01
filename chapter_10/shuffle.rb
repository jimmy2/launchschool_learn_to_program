# Chapter 10

# Shuffle Sort

array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

def shuffle some_array
  shuffle = []
  while some_array.length > 0
    random_index = rand(some_array.length)
    current_index = 0
    new_array = []
    some_array.each do |item|
      if current_index == random_index
        shuffle << item
        puts "added #{item}"
      else
        new_array << item
        puts "put back #{item}"
      end
      current_index = current_index + 1
    end
    some_array = new_array
  end
  shuffle
end 

puts shuffle(array)