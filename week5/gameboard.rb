class GameBoard
  attr_accessor :locations
  
  def set_locations_cells(locations)
    @locations = locations
  end
  def check_yourself(user_guess)
    puts locations.size
    if locations.include?(user_guess)  
        locations.delete(user_guess)
        puts 'Hit'
    else
        puts 'Miss'  
    end       
    'kill' if locations.size == 0
  end
end