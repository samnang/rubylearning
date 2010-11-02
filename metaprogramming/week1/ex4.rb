=begin
Exercise 4:

  * Build the following snippet by adding your code.
    Expected output is '[1, 2, 3]'

    class A
      @@a = 1
      @a = 2
      a = 3

      # Write your code here. Use binding method.

    end

    p eval('[@@a, @a, a]', *****)   # Replace '*****' to your code

=end

class A
  @@a = 1
  @a = 2
  a = 3


  singleton_class.class_eval do
      define_method(:get_binding){binding}
  end
end

p eval('[@@a, @a, a]', A.get_binding)

