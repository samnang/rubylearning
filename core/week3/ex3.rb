=begin
  Exercise3. Make use of the class Dir for the following -

    * Display your current working directory.
    * Create a new directory tmp under your working directory.
    * Change your working directory to tmp
    * Display your current working directory.
    * Go back to your original directory.
    * Delete the tmp directory.

=end

puts Dir.pwd
Dir.mkdir("tmp")
Dir.chdir("tmp")
puts Dir.pwd
Dir.chdir("..")
Dir.rmdir("tmp")

