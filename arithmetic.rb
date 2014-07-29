# https://gist.github.com/epoch/65c83afc196cace85c8e
# Write a program that takes a word problem in the format:

# What is 5 plus 13?

# What is 7 minus 5?

# What is 6 multiplied by 4?

# What is 25 divided by 5?
# and returns the answer as an integer.

p input = "What is 25 divided by 5?"
p input = input.split(" ")
p x = input[2].to_i
p y = input[-1][0..-2].to_i
p sign = input[3]

case sign
  when "plus" then p x + y
  when "minus" then p x - y
  when "multiplied" then p x * y
  when "divided" then p x / y
end

# regular expressions
# str = "What is 5 plus 13?"
# p matched = str.match(/What is \d plus \d/)
# p matched[0]