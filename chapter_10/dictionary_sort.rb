# Chapter 10

# Dictionary Sort

array = ["pineapple", "Carrot", "apple", "grape", "Banana", "AAA"]

def sort some_array  #  This "wraps" recursive_sort. 
  dictionary_sort some_array, [] 
end 

def dictionary_sort unsorted_array, sorted_array   
  #  Your fabulous code goes here.
  if unsorted_array.length <= 0
    return sorted_array
  end
  smallest = unsorted_array.pop
  cs_smallest = smallest.to_s.downcase
  still_unsorted = []
  unsorted_array.each do |object|
    cs_object = object.to_s.downcase
    if cs_object < cs_smallest
      still_unsorted << smallest
      smallest = object
    else
      still_unsorted << object
    end
  end
  sorted_array << smallest
  dictionary_sort(still_unsorted, sorted_array)
end

puts sort(array)
