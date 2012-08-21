# Author: Rommel Asibal
# Exercise 4. Write a Ruby program that tells you how many minutes there are in a year (do not bother right now about leap years etc.).

# This program takes years and converts it to minutes 

  # 60 = 1 min
  # 3600 = 1 hr
  # 86400 = 1 day
  # 31536000 = 1 year

def ConvertYearsToMinutes( years )
  years.to_f * (31536000 / 60)
end

puts "How many years do you want to convert? "
STDOUT.flush
years = gets.chomp
minutes = ConvertYearsToMinutes( years )
puts "#{years} year(s) is #{minutes} minutes"