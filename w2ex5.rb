# b. What happens in the following Ruby code?

x = 10
y = 20
x, y = y, x
puts x
puts y

=begin
my interpretation of whats happening

x gets 10
y gets 20
ruby is probably using a block and using internal variables to switch the values of x and y
x = first value = y == 20
y = second value = x == 10
puts x == 20
puts y == 10
	
=end

