=begin
w3ex16.rb
Exercise16. Select all correct ways to do an ascending sort by string length.

a = ["Magazine", "Sunday", "Jump"]
Answers:
1. a.sort
2. a.sort { |s| s }
3. a.sort { |l, r| l <=> r }
4. a.sort { |l, r| l.length <=> r.length }
5. a.sort_by { |s| s }
6. a.sort_by { |s| s.length }
=end

4 & 6 sort by string length

# 1 sorts by alphanumeric 
2 gives out an error 
3 sorts the same as 1 
5 sorts same as 1 and 3