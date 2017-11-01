# Chapter 10

# English Number

def english_number(number)
  if number < 0
    return "Please enter a positive number"
  end
  if number == 0
    return "zero"
  end
  number_string = ""
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teens_place = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  left = number
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number(write)
    number_string = number_string + hundreds + ' hundred'
    if left > 0
      number_string = number_string + ' '
    end
  end
  write = left/10
  left = left - write*10
  if write > 0
    if ((write == 1) && (left > 0))
      number_string = number_string + teens_place[left - 1]
      left = 0
    else
      number_string = number_string + tens_place[write - 1]
    end
    if left > 0
      number_string = number_string + '-'
    end
  end
  write = left
  left = 0
  if write > 0
    number_string = number_string + ones_place[write - 1]
  end
  number_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3_211)
puts english_number(999_999)


