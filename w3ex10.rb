=begin
w3ex10.rb
Exercise10. Write a Ruby program that, when given an array: collection = [1, 2, 3, 4, 5] calculates the sum of its elements.
=end

numbers = [1, 2, 3, 4, 5]

sum = 0
numbers.each {|number| sum += number }
puts sum