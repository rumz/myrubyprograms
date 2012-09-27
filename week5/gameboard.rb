class GameBoard
  attr_accessor :locations

  def initialize
    @no_hits = 0
  end

  def set_locations_cells(locations)
    @locations = locations
  end

  def check_yourself(user_guess)
    if locations.include?(user_guess)  
      locations.delete(user_guess)
      @no_hits += 1
      if @no_hits == 3 
        p 'End'
        'kill'
      else 
        p 'Hit'
    end
    else
      p 'Miss'  
    end 
  end
end
