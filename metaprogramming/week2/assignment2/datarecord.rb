require_relative 'string_ext'

class Datarecord
  class << self
    def make(file)
      return unless File.exist?(file)

      define_class_with_attributes(file)
    end

    private
    def define_class_with_attributes(file)
      klass_name = file.split(".").first
      attributes = open(file).gets.chomp.split(", ").map(&:to_sym)

      klass = Struct.new(*attributes) do
        define_singleton_method(:read) do
          File.open(file) do |f|
            f.readline #ignore header column

            f.readlines.inject([]) do |records, line|
              record = eval("[#{line.chomp}]")
              records << new(*record)
            end
          end
        end
      end

      Object.const_set(klass_name.titlecase, klass)
    end
  end
end

# ============= Running examples ==================
klass = Datarecord.make 'people.txt'
p klass  #=> People
klass.read.each{|people| p people}

klass = Datarecord.make 'customers.txt'
p klass  #=> Customers
klass.read.each{|people| p people}
