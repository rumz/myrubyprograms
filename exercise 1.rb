# Author: Rommel Asibal
# Exercise 1

y = false
z = true
x = y or z    # true
puts x        # false is output
(x = y) or z  # true 
puts x        # false is output
x = (y or z)  # true
puts x        # true is output


