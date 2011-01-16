=begin
Exercise 3:

  * There are lots of ways to define singleton method.

    animal = 'dog'

    # define singleton speak() method

    animal.speak  #=> 'Dog says Woof!'

=end

def test_singleton_method
  animal = 'dog'

  yield animal

  puts animal.speak
end

#=============================================

test_singleton_method do |dog|
  def dog.speak
    "Woof!"
  end
end

test_singleton_method do |dog|
  dog.instance_eval do
    def speak
      "Woof!"
    end
  end
end

test_singleton_method do |dog|
  class << dog
    def speak
      "Woof!"
    end
  end
end

test_singleton_method do |dog|
  class << dog
    define_method(:speak) do
      "Woof!"
    end
  end
end

test_singleton_method do |dog|
  class << dog
    define_method(:speak, lambda { "Woof!" })
  end
end

test_singleton_method do |dog|
  module SpeakableDog
    def speak
      "Woof!"
    end
  end

  class << dog
    include SpeakableDog
  end
end

test_singleton_method do |dog|
  module SpeakableDog
    def speak
      "Woof!"
    end
  end

  dog.extend SpeakableDog
end

#================ Ruby 1.9.2 ====================

test_singleton_method do |dog|
  module SpeakableDog
    def speak
      "Woof!"
    end
  end

  dog.singleton_class.send(:include, SpeakableDog)
end

test_singleton_method do |dog|
  dog.singleton_class.class_eval do
    def speak
      "Woof!"
    end
  end
end

test_singleton_method do |dog|
  dog.singleton_class.send(:define_method, :speak) do
    "Woof!"
  end
end

test_singleton_method do |dog|
  dog.define_singleton_method(:speak) do
    "Woof!"
  end
end

test_singleton_method do |dog|
  dog.singleton_class.send(:define_method, :speak, lambda { "Woof!" })
end
