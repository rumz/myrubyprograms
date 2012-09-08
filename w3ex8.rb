=begin
w3ex8.rb
Exercise8. Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.
=end


def fizz_buzz(num) 
  output = ''
  if (num % 3==0)
    output << 'Fizz'
  end
  if (num % 5==0)
    output << 'Buzz'
  end
  if output == ''
    output << num.to_s
  end
  return output
end

(1..100).each do |num|
  puts fizz_buzz(num)
end


# def fizz_buzz(num) 
#   output = case
#     when ((num % 3==0) and (num % 5==0)) then "FizzBuzz"
#     when (num % 5==0) then "Buzz"
#     when (num % 3==0) then "Fizz"
#     else num
#     end
#   return output
# end