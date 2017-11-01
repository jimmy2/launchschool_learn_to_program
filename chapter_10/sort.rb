# Chapter 10

# Recursion Sort

array = ["pineapple", "apple", "grape", "banana"]

def sort some_array  #  This "wraps" recursive_sort. 
  recursive_sort some_array, [] 
end 

def recursive_sort unsorted_array, sorted_array   
  #  Your fabulous code goes here.
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  still_unsorted = []
  unsorted_array.each do |object|
    if object < smallest
      still_unsorted << smallest
      smallest = object
    else
      still_unsorted << object
    end
  end
  sorted_array << smallest
  recursive_sort(still_unsorted, sorted_array)
end

puts sort(array)
