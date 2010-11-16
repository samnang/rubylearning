=begin

  Exercise2. Write a Rectangle class. I shall use your class as follows:

  r = Rectangle.new(23.45, 34.67)
  puts "Area is = #{r.area}"
  puts "Perimeter is = #{r.perimeter}"

=end

class Rectangle
  def initialize(width, height)
    @width = width
    @height = height
  end
  
  def area
    @area ||= @width * @height
  end
  
  def perimeter
    @perimeter ||= 2 * (@width + @height)
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

#Second time calls
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"
