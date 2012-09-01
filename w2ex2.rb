#Exercise2. Run the following two programs and try and understand the difference in the outputs of the two programs. The program:


def mtdarry
 10.times do |num|
   puts num
 end
end

mtdarry


# This is calling the method mtdarry so it will output 0-9


#and then run program:

=begin
def mtdarry
 10.times do |num|
   puts num
 end
end

puts mtdarry
=end

# This calls the method mtdarry in puts so first it outputs 0-9 
# and then mtdarry returns 10 which puts then outputs to the screen as well
# OT: I really like the implementation of NUMBER.times its really intuitive