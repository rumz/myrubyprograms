=begin
w3ex9.rb
Exercise9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.
=end

string = "This is a sample string."
new_string = string.split(' ').reverse.join(' ')
puts new_string