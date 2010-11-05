=begin
  Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:

  def mtdarry
    10.times do |num|
      puts num
    end
  end

  mtdarry

  and the program:

  def mtdarry
    10.times do |num|
      puts num
    end
  end

  puts mtdarry

=end

The different result because the second program gets the return value from mtdarry method to print it out, but the interest thing is why we get 10 for returnning value from the method because when passing a block to times method of Fixnum, then executed that method, after that it will return self and here the self is 10, that's why we got the return value from the last executed statement in mtdarry method.

