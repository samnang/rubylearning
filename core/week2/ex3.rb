=begin
  Exercise3. Write a method leap_year?. It should accept a year value from the user, check whether it's a leap year, and then return true or false. With the help of this leap_year?() method calculate and display the number of minutes in a leap year (2000 and 2004) and the number of minutes in a non-leap year (1900 and 2005). Note: Every year whose number is divisible by four without a remainder is a leap year, excepting the full centuries, which, to be leap years, must be divisible by 400 without a remainder. If not so divisible they are common years. 1900, therefore, is not a leap year.

=end

MINS_IN_DAY = 60 * 24
DAYS_IN_YEAR = 365
DAYS_IN_LEAP_YEAR = 366

def leap_year?(year)
  (year % 100).zero? ? (year % 400).zero? : (year % 4).zero?
end

def minutes_in_year(is_leap_year=false)
  days = is_leap_year ? DAYS_IN_LEAP_YEAR : DAYS_IN_YEAR

  days * MINS_IN_DAY
end

[1900, 2000, 2004, 2005].each do |year|
  is_leap_year = leap_year?(year)

  puts "#{year} is leap year? #{is_leap_year}"
  puts "And there are #{minutes_in_year(is_leap_year)} minutes in this year.\n\n"
end

