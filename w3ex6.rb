# w3ex6.rb
=begin
Exercise6. Write a Deaf Grandma program. Whatever you say to grandma 
(whatever you type in), she should respond with HUH?! SPEAK UP, SONNY!,
 unless you shout it (type in all capitals). If you shout,
  she can hear you (or at least she thinks so) and yells back,
   NO, NOT SINCE 1938! To make your program really believable, 
   have grandma shout a different year each time; maybe any year at 
   random between 1930 and 1950. You can't stop talking to grandma 
   until you shout BYE.

Adapted from Chris Pine's Book.

For example:

You enter: Hello Grandma
Grandma responds: HUH?! SPEAK UP, SONNY!
You enter: HELLO GRANDMA
Grandma responds: NO, NOT SINCE 1938!
=end


input = ''
years = [*1930...1951]

puts "Is their something you want to tell Lola?"
while input != 'BYE'
  print "> "
  STDOUT.flush
  input = gets.chomp
  if input != input.upcase 
    puts "HUH?! SPEAK UP, SONNY!"
  elsif input == 'BYE'
    puts "BYE, SONNY!"
  else
    puts "NO, NOT SINCE #{years[rand(years.size)]}"
  end
end
