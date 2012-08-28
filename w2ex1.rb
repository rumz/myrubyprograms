=begin
Author: Rommel Asibal
Exercise1. Write a program that processes the string s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n" a line at a time, using all that we have learned so far. The expected output is:

>ruby tmp.rb
Line 1: Welcome to the forum.
Line 2: Here you can learn Ruby.
Line 3: Along with other members.
>Exit code: 0
=end

s = []
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

x = 0
s.lines do |line|
  x += 1
  puts "Line #{x}: " + line
end

exit 0