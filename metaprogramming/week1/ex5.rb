=begin
Exercise 5:

  * Define the following class without class MaskedString, def tr_vowel and def self.tr_vowel

    class MaskedString < String
      def tr_vowel
        tr 'aeiou', '*'
      end
      def self.tr_vowel str
        str.tr 'aeiou', '*'
      end
    end

=end

module StringMaskable
  def tr_vowel
    tr 'aeiou', '*'
  end

  def self.included(klass)
    klass.extend ClassMethods
  end

  module ClassMethods
    def tr_vowel str
      str.tr 'aeiou', '*'
    end
  end
end

MaskedString =
  Class.new(String) do
    include StringMaskable
  end

MaskedString = Class.new(String) do
  define_method :tr_vowel do
    tr 'aeiou', '*'
  end

  instance_eval do
    def tr_vowel str
      str.tr 'aeiou', '*'
    end
  end
end

