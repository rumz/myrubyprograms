# w3ex1.rb
=begin
Exercise1. Why is the output of this program as shown below:

50
10
=end

def method
 a = 50
 puts a
end

a = 10
method
puts a

# There are two a's, so the a inside method has different scope than the a outside.  Since you call method first, it outputs the value of the a (50) inside and then the second puts outside a outputs the value of the a (10) outside the method.