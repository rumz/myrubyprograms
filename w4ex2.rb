=begin
w4ex2.rb
Exercise2. Write a Rectangle class. I shall use your class as follows:

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

=end

class Rectangle
  def initialize(length, width)
    @area = length * width
    @perimeter = (2 * length ) + (2 * width)
  end

  def area 
    @area
  end

  def perimeter
    @perimeter
  end 
end

def decorate
  puts '=' * 30
end



decorate
r = Rectangle.new(23.45, 34.67)
puts "Area is %.2f" %  r.area
puts "Perimeter is %.2f" % r.perimeter
decorate
