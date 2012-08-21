=begin

Using what we have learned so far: I wonder if anyone could have a crack at working out the age in years and months form. For example “I’m 32 years and 6 months old.”
Use the following values for age_in_seconds:

979000000
2158493738
246144023
1270166272
1025600095

 Seconds
 60       = 1 min  = 1 sec x 60
 3600     = 1 hr   = 60 min x 60 secs
 86400    = 1 day  = 3600 secs x 24  
 31536000 = 1 year = 365 days x 86400 secs

=end

SECONDS_IN_YEAR = 31536000
SECONDS_IN_MONTH = 86400 * 30

def convert_secs_years(age_in_seconds)
  format("%2d", (age_in_seconds / SECONDS_IN_YEAR))
end

def convert_secs_months(age_in_seconds)
  format("%2d", ((age_in_seconds % SECONDS_IN_YEAR)/SECONDS_IN_MONTH))
end

def show_age(age_in_seconds)
  puts "I'm #{convert_secs_years(age_in_seconds)} years\
 and #{convert_secs_months(age_in_seconds)} months old."
end

# Test Ages 
show_age(979000000)
show_age(2158493738)
show_age(246144023)
show_age(1270166272)
show_age(1025600095)
