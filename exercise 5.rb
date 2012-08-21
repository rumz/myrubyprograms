# Exercise 5. The following program prints the value of the variable. Why?

my_string = 'Hello Ruby World'
def my_string
  'Hello World'
  puts self
end

puts my_string
puts self

# It does not go into the method, but if you put () to denote a function then it will explicitly reference/access the method