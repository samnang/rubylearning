class Dog
  Messages = {
    :dance => "is dancing",
    :poo => "is a smelly doggy!",
    :laugh => "finds this hilarious!"
  }

  def initialize(name)
    @name = name
  end

  def can(*args)
    args.each do |e|
      singleton_class.send(:define_method, e, lambda {"#{@name} #{Messages[e]}"})
    end
  end

  def method_missing(name, *args, &block)
    return "#{@name} doesn't understand #{name}" if Messages.keys.include? name

    super
  end
end

