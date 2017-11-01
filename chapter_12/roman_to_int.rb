# Chapter 12

# Party like it's mcmxcix!

def roman_to_integer(roman)
  values = {i: 1, v: 5, x: 10, l: 50, c: 100, d: 500, m: 1000}
  total = 0
  prev = 0
  index = roman.length - 1
  while index >= 0
    c = roman[index].downcase
    c = c.to_sym
    index = index - 1
    value = values[c]
    if !value
      return "Not a valid roman numeral"
    end
    if value < prev
      value = value * -1
    else
      prev = value
    end
    total = total + value
  end
  total
end

puts roman_to_integer('mcmxcix')
puts roman_to_integer('CCCLXV')
puts roman_to_integer('ix')
puts roman_to_integer('lv')
puts roman_to_integer('james')
puts roman_to_integer('MDCCCIV')