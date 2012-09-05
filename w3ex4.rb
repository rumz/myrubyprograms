# w3ex4.rb
=begin
Exercise4. Given the following Ruby code snippet:

a = (1930...1951).to_a
puts a[rand(a.size)]
 
When you run this program, which of the following values will not be displayed?
1929
1930
1945
1950
1951
1952
Explain why that value will not be displayed.

Also, have a look at the splat operator:

a = [*1930...1951] # splat operator
=end


# obviously out of range: 1929, 1952
# since ... is exclusive then 1930 and 1951 will also not be included

a = (1930...1951).to_a
puts a[rand(a.size)]

a = [*1930..1951] # splat operator
puts a

# the splat operator seems to make ranges "expand/explode" 