=begin
  Exercise15 Select all correct outputs for the following program:

  for i, j in [[1, 2], [3, 4], [5, 6]]
  p [i, j]
  end

  Answers:

  1. [[1, 2], nil]
  [[3, 4], nil]
  [[5, 6], nil]

  2. [nil, [1, 2]]
  [nil, [3, 4]]
  [nil, [5, 6]]

  3. [1, 2]
  [3, 4]
  [5, 6]

  4. Syntax Error

=end

3 are correct here because for..in will loop through each element in [[1, 2], [3, 4], [5, 6]], then the first element will be [1, 2], and for has two varialbes i and j here, so Ruby will use parallel assignment, after that i will be 1 and j will be 2, and finally p will print out the new contrusted array([1, 2]) from values of i and j, and next loop so on.

