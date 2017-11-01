# Chapter 10

# 99 Bottles of beer on the wall (text)

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
  extras = [['hundred', 2], ['thousand', 3], ['million', 6], ['billion', 9], ['trillion', 12]]
  left = number
  while extras.length > 0
    pair = extras.pop
    name = pair[0]
    base = 10 ** pair[1]
    write = left/base
    left = left - write*base
    if write > 0
      prefix = english_number(write)
      number_string = number_string + prefix + ' ' + name
      if left > 0
        number_string = number_string + ' '
      end
    end
  end

  # tens + teens
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
  # ones
  write = left
  left = 0
  if write > 0
    number_string = number_string + ones_place[write - 1]
  end
  number_string
end

bottles = 999

while bottles > 0
  if bottles > 1
    puts "#{english_number(bottles).capitalize} bottles of beer on the wall..."
  else 
    puts "0ne bottle of beer on the wall..."
  end
  bottles -= 1
end