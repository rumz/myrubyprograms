# w3ex2.rb

=begin
Exercise2. Thanks to Marcos Souza for this exercise. A plain text file has the following contents:

test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
 
Observe that in this file, there exists a word 'word'. Write a clever but readable Ruby program that updates this file and the final contents become like this:
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
test test inserted word test test
test test test test test
test test test test test
test test test test test
test test test test test
test test test test test
 
Do not hard-code the file name.
=end

# todo
# get the filename from the user
# look for the word word
# insert the word "inserted" before the word word



# file_name = 'w3ex2textfile.txt'
file_contents = ""
print "Please enter the name of the file: "
STDOUT.flush
file_name = gets.chomp



File.open(file_name, 'r') do |file_line|
  while line = file_line.gets 
    line.sub!('word', 'inserted word')
    file_contents.concat(line)
#    file_line.puts(line)
  end
end if File::file?(file_name)

File.open(file_name, 'w') { |new_file| new_file.puts(file_contents)}

