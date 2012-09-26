# Second  script (diff)

file1            = 'old-inventory.txt'
file2            = 'new-inventory.txt'
file1_contents   = []
file2_contents   = []
added_items      = []
subtracted_items = []

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

file1_contents.each { |item| subtracted_items.push(item) unless file2_contents.include?(item) }
file2_contents.each { |item| added_items.push(item) unless file1_contents.include?(item) }

puts "Comparing #{file1} and #{file2} to see changes:"
puts "Files deleted from the original directory listing"
subtracted_items.each { |item| puts "#{item.chomp}" }
puts 
puts "Files added to the original directory listing"
added_items.each { |item| puts "#{item.chomp}" }