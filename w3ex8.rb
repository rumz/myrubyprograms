=begin
doctest: fizzbuzz works
>> fizz_buzz(0)
=> "FizzBuzz"

w3ex8.rb
Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.
=end


def fizzbuzz(num) 
  output = ''
  output << 'Fizz' if (num % 3==0)
  output << 'Buzz' if (num % 5==0)
  output.empty? and num or output
end

if __FILE__ == $0
  (1..15).each do |num|
    puts fizzbuzz(num)
  end
end
