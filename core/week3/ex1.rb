=begin
  Exercise1. Why is the output of this program:

  def method
    a = 50
    puts a
  end

  a = 10
  method
  puts a

  as shown below:

  50
  10
end
=end

The output values of 'a' are different because Ruby has concept of scoping, and each scope has different local variables table, so 'a' in method stores in local variables table of method and 'a' at output store in top level local variables table scope.

