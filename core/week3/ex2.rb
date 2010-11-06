=begin
  Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:

  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test word test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test

  Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:

  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test inserted word test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test
  test test test test test

  Do not hard-code the file name.
=end

def replace_text_in_file(file_name, text, new_text)
  File.open(file_name, 'r+') do |f|
    new_content = f.read.gsub(text, new_text)
    f.rewind
    f.puts new_content
  end
end

replace_text_in_file(ARGV[0], "word", "inserted word")

