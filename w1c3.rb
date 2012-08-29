=begin
  Author: Rommel Asibal
  Changelog
  08-28-2012  Fixed some bugs, refactored code with Victor's help
=end


def multiplication_table(size, heading = '', decorate = false)

  table = []
  spacing_tracker = []
  line_length = 0
  
  unless heading.nil? 
    table.push(heading + "\n")
  end
  
  size > 0 ? header=size : header=1
  header.times do |n|
    # account for bottom row length spacing, (each number + 1 space)
      line_length += ((n+1) * header).to_s.length + 1
      spacing_tracker.push((((n+1) * header)).to_s.length)
  end 
  # finally add one extra character
  line_length += 1

  
  begin  
    header_line = ""
    line_length.times { header_line << "=" }
    header_line << "\n"
    table.push(header_line)
  end if decorate 
  
  x = y = size  # x and y coordinates
  y.times do |y| 
    line = ""
    x = size # without this, only upper top half of triangle was output
    x.times do |x| 
      line += format("%#{spacing_tracker[x]+1}d", ((x+1) * (y+1)).to_s)
    end
    line << "\n"
    table.push(line)
  end

  table.push(" 0\n") if size == 0
  
  
  table.push(header_line) if decorate
  puts table.inspect

  return table;
end

multiplication_tables = [multiplication_table(1, '1x1 Table', true),
                         multiplication_table(5, '5x5 Table without decoration', false),
                         multiplication_table(10, '', true),
                         multiplication_table(0, '0x0', true)]

multiplication_tables.each do |table|
  puts table
end
