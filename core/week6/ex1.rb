=begin
  Exercise1. Write a class called Person that has balance as an instance variable and make it readable via an accessor.
=end

class Person
  def initialize(balance=0)
    @balance = balance
  end

  attr_reader :balance
end

puts Person.new(20).balance
