=begin
Exercise 1:

  * Could you get the values from outside the class A ?
  
    class A
      def initialize
        @a = 11
        @@a = 22
        a = 33
      end
      @a = 1
      @@a = 2
      a = 3
    end
      
  * Write your code which outputs like this:
  
    1
    2
    3
    11
    22
    33
    
=end

a_inclass = 
  class A
    def initialize
      @a = 11
      @@a = 22
      a = 33
    end
    @a = 1
    @@a = 2
    a = 3
  end

class B < A
  def initialize
    @a_in_instance = super
  end
end
  
puts A.class_eval("@a")
puts A.class_eval("@@a")
puts a_inclass

b = B.new
puts b.instance_eval("@a")
puts A.class_eval("@@a")
puts b.instance_eval("@a_in_instance")
