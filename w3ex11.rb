# w3ex11.rb
=begin
Exercise11. Write a Ruby program that, when given an array: collection = [12, 23, 456, 123, 4579] prints each number, and tells you whether it is odd or even.
=end


def parity(number)
  (number % 2==0) ? 'Even' : 'Odd'
end


collection = [12, 23, 456, 123, 4579]
collection.each { |number| puts "#{number} is #{parity(number)}" }
