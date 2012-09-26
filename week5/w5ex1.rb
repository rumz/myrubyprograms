=begin
Exercise1. Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:

>ruby unpredictablestring.rb
daano.r n sdt a htIsw taikmgy r
>Exit code: 0
# the original string was: "It was a dark and stormy night."
=end

class UnpredictableString < String
  attr_accessor :current_string

  def initialize(input="It was a dark and stormy night.")
    @current_string = input
  end

  def scramble
    tmp_string = @current_string.split('')
    new_string = []
    while tmp_string.size > 0 
      random_num = rand(tmp_string.size)
      new_string.push(tmp_string[random_num])
      tmp_string.delete_at(random_num)
    end
    new_string.join('')
  end
  
  def display
    puts @current_string
  end

end

us = UnpredictableString.new()
us.display
p us.scramble