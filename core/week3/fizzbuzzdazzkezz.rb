FUNNY_WORDS = {
  3 => "Fizz",
  5 => "Buzz",
  7 => "Dazz",
  11 => "Kezz"
}

1.upto(100) do |number|
  output = ""
  
  FUNNY_WORDS.each do |value, word|
    output += word if (number % value).zero?     
  end
  
  puts output.empty? ? number : output
end
