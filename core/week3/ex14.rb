=begin
  Exercise14. Select all answers which return true.

  h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
  Answers:
  1. h.member?("Matz")
  2. h.member?("Python")
  3. h.include?("Guido")
  4. h.include?("Ruby")
  5. h.has_value?("Larry")
  6. h.exists?("Perl")
=end

2, 4, 5 return true. These member?, include?, :has_key? are the same, and it just one method alias another one, we use it to check is the hash has the key that passed in. has_value? tells us what it does from its method name. But exists? doesn't exist in instance methods of Hash.

