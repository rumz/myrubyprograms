=begin

Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.”

=end

second = 1
seconds_in_minute = second * 60
seconds_in_hour = 60 * seconds_in_minute
seconds_in_day = 24 * seconds_in_hour
@seconds_in_year = 365 * seconds_in_day
@seconds_in_month = 30 * seconds_in_day

def convert_secs_years(age_in_seconds)
  age_in_seconds / @seconds_in_year
end

def convert_secs_months(age_in_seconds)
  (age_in_seconds % @seconds_in_year) / @seconds_in_month
end

def show_age(age_in_seconds)
  puts "I'm #{format("%2d", convert_secs_years(age_in_seconds))} years\
 and #{format("%2d", convert_secs_months(age_in_seconds))} months old."
end


ages = []
ages.push(convert_secs_years(979000000))
ages.push(convert_secs_years(2158493738))

total_years = 0

ages.each { |age| total_years += age } 

puts "Total years: #{total_years}"
puts "Average number of years: #{total_years.to_f / ages.size}"


# Test Ages 
# show_age(979000000)
# show_age(2158493738)
# show_age(246144023)
# show_age(1270166272)
# show_age(1025600095)