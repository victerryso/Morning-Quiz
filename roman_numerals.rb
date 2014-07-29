conversion = [[1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']]

p number = 1984
p roman = ''

conversion.each do |x|
  while number >= x[0]
    roman += x[1]
    number -= x[0]
  end
end

p number
p roman

conversion.each do |x|
  length = x[1].length

  while roman[0...length] == x[1]
    number += x[0]
    roman[0...length] = ''
  end

end

p number
p roman