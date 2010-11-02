=begin
Exercise 3:

  * There are lots of ways to define singleton method.

    animal = 'dog'

    # define singleton speak() method

    animal.speak  #=> 'Dog says Woof!'

=end

animal = 'dog'

def animal.speak
  'Dog says Woof!'
end

class << animal
  def speak
    'Dog says Woof!'
  end
end

class << animal
  define_method :speak do
    'Dog says Woof!'
  end
end

animal.instance_eval do
  def speak
    'Dog says Woof!'
  end
end

class << animal
  send :define_method, :speak, lambda { puts 'Dog says Woof!' }
end

module Speakable
  def speak
    'Dog says Woof!'
  end
end

class << animal
  include Speakable
end

animal.extend Speakable

