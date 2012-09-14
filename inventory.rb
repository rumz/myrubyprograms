=begin
 Exercise5. Difficulty level: MEDIUM Write a one-line Ruby script that displays on the screen all the files in the current folder as well as everything in all its sub folders, in sorted order. Make use of Dir.glob method as follows:

Dir.glob('**/*')
Name this program inventory.rb. Create an inventory file by typing the following at the command prompt:
ruby inventory.rb > old-inventory.txt
After a few days, when some files would have been added / deleted from this folder, run the program again like:
ruby inventory.rb > new-inventory.txt
Now, write another Ruby script that displays on the screen all the files that have been added in this folder since the time the old-inventory.txt was created.

=end

# First inventory.rb script
#Dir.glob('**/*').sort!.each {|item| puts "#{item}" }

# Second iventory.rb script 

file1 = 'old-inventory.txt'
file2 = 'new-inventory.txt'

file1_contents = []
file2_contents = []

File.open(file1, "r") do |io|
  while line = io.gets
    file1_contents.push(line)
  end  
end if File::file?(file1)

File.open(file2, "r") do |io|
  while line = io.gets
    file2_contents.push(line)
  end  
end if File::file?(file2) 

diff = []
file2_contents.each { |item| diff.push(item) unless file1_contents.include?(item) }

diff.each { |item| p item}