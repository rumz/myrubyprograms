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
    area = format("%.2f", @area) 
  end

  def perimeter
    perimeter = format("%.2f", @perimeter) 
  end 
end


r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

