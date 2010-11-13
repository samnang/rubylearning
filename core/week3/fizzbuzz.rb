=begin
  Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this here.
  
=end

1.upto(100) do |number|
  output = ""
  
  output = "Fizz" if (number % 3).zero? 
  output+= "Buzz" if (number % 5).zero?
  
  puts output.empty? ? number : output
end
