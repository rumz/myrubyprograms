=begin
p028swapcontents.rb
Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.
=end

file1 = 'test.txt'
file2 = 'test2.txt'

f1 = File.open(file1, 'r').gets('\n') if File::file?(file1)
f2 = File.open(file2, 'r').gets(nil).split('\n') if File::file?(file2)

File.open(file1, 'w').puts(f2)
File.open(file2, 'w').puts(f1)