=begin
  Exercise9. Given a string, write a program to reverse the word order (rather than character order). The String and Array classes provide methods which will be very helpful for solving this exercise.

=end

s = "This is a testing"
puts s.split.reverse.join(" ") #Same as s.split.reverse * " "

