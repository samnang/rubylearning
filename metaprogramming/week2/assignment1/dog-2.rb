class Dog
  Messages = {
    :dance => "is dancing",
    :poo => "is a smelly doggy!",
    :laugh => "finds this hilarious!"
  }

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def can(*args, &block)
    args.each do |e|
      block = lambda {"#{name} #{Messages[e]}"} unless block_given?
      singleton_class.send(:define_method, e, &block)
    end
  end

  def method_missing(name, *args, &block)
    return "#{@name} doesn't understand #{name}" if Messages.keys.include? name

    super
  end
end

