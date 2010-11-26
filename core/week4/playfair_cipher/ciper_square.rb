class CiperSquare
  NUMBER_LETTERS = 25
  LETTERS_PER_ROW = 5
  
  def initialize(key)
    @key = key.upcase
  end
  
  def draw
    fill_remainder_letters
    draw_table
  end
  
  private
    
  def fill_remainder_letters
    if letters.size < NUMBER_LETTERS
      letters.concat(remainder_letters.shift(NUMBER_LETTERS - letters.size))
    end
  end
  
  def letters
    @letters ||= @key.gsub('J', 'I').scan(/[A-Z]/).uniq
  end
  
  def remainder_letters
    @remainder_letters ||= [*'A'..'Z'] - ["J"] - letters
  end
  
  def draw_table
    table = ""    
    0.step(NUMBER_LETTERS - 1, LETTERS_PER_ROW) do |index|
      table << letters[index, LETTERS_PER_ROW] * ' '
      table << "\n"
    end
    
    table
  end
end
