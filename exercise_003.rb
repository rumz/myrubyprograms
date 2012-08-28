=begin
	Author: Rommel Asibal
	Exercise 3

	Write a Ruby program that displays how old I am, if I am 979000000 seconds old. Display the result as a floating point (decimal) number to two decimal places (for example, 17.23).
	Note: To format the output to say 2 decimal places, we can use the Kernel's format method. For example, if x = 45.5678 then format("%.2f", x) will return the string 45.57

	This program takes seconds and converts it to years
=end

def ConvertSecondsToYears( age_in_seconds )
  age_in_seconds.to_f / (60 * 60 * 24 * 365)
end

#age = ConvertSecondsToYears(seconds)
#age = format("%.2f", age)
#puts age

puts "Give me a number in seconds and I will return the number of years it represents. "
STDOUT.flush
seconds = gets.chomp
years = format("%.2f",ConvertSecondsToYears(seconds))
puts "#{seconds} seconds equals #{years} years"

