# Chapter 9

# Old school Roman Numerals

puts "Give us a number between 1 and 3000"
reply = gets.chomp.to_i

def old_roman_numeral(num)
  roman = ""
  thous = num / 1000
  hund = num % 1000 / 100
  tens = num % 100 / 10
  ones = num % 10
  if thous > 0
    roman = 'M' * thous
  end
  if hund >= 5
    roman = roman + 'D'
    remainder = hund - 5
    roman = roman + ('C' * remainder)
  else
    roman = roman + ('C' * hund)
  end
  if tens >= 5
    roman = roman + 'L'
    remainder = tens - 5
    roman = roman + ('X' * remainder)
  else
    roman = roman + ('X' * tens)
  end
  if ones >= 5
    roman = roman + 'V'
    remainder = ones - 5
    roman = roman + ('I' * remainder)
  else
    roman = roman + ('I' * ones)
  end
  roman
end

# def old_roman_numeral num
#   raise 'Must use positive integer' if num <= 0   
#   roman = ''   
#   roman << 'M' * (num        / 1000)
#   roman << 'D' * (num % 1000 /  500)
#   roman << 'C' * (num %  500 /  100)   
#   roman << 'L' * (num %  100 /   50)   
#   roman << 'X' * (num %   50 /   10)   
#   roman << 'V' * (num %   10 /    5)   
#   roman << 'I' * (num %    5 /    1) 
#   roman 
# end

puts old_roman_numeral(reply)


