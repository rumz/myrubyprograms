=begin
Exercise3. Write a method leap_year?. It should accept a year value from 
the user, check whether it's a leap year, and then return true or false. 
With the help of this leap_year?() method calculate and display the number
of minutes in a leap year (2000 and 2004) and the number of minutes in a 
non-leap year (1900 and 2005). Note: Every year whose number is divisible
by four without a remainder is a leap year, excepting the full centuries,
which, to be leap years, must be divisible by 400 without a remainder. If
not so divisible they are common years. 1900, therefore, is not a leap year.
=end


def leap_year?(year)
leap = case 
  when year % 400 == 0 then true
  when year % 100 == 0 then false
  when year % 4   == 0 then true
  else false 
  end
  return leap
end

def years_to_minutes(year)
  leap_year?(year) ? (60 * 24 * 366) : (60 * 24 * 365)
end


years = [2000, 2004, 1900, 2005]

years.each do |year|
  puts "Year #{year} has " + years_to_minutes(year).to_s + " minutes."
end

