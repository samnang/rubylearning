=begin
  Exercise4. Given the following Ruby code snippet:

  a = (1930...1951).to_a
  puts a[rand(a.size)]

  When you run this program, which of the following values will not be displayed?

     1. 1929
     2. 1930
     3. 1945
     4. 1950
     5. 1951
     6. 1952

  Explain why that value will not be displayed.

  Also, have a look at the splat operator:

  a = [*1930...1951] # splat operator

=end

1929, 1951, and 1952 will not be diplayed because these three values don't have in range value. 1951 has mentioned during creating range object, but we use ... here so last value will be excluded.

The splat operator is a shortcut to convert range object to array.
a = [*1930...1951] # Same as (1930...1951).to_a

