=begin
  Exercise16. Select all correct ways to do an ascending sort by string length.

  a = ["Magazine", "Sunday", "Jump"]
  Answers:
  1. a.sort
  2. a.sort { |s| s }
  3. a.sort { |l, r| l <=> r }
  4. a.sort { |l, r| l.length <=> r.length }
  5. a.sort_by { |s| s }
  6. a.sort_by { |s| s.length }

=end

4 and 6 are correct answers here because 4 sorts the array by left and right parameter, and it expected the return value from block with -1, 0, and 1 for sorting elements of the array. On the other hand, 6 sorts the array by value that returns from the block.

