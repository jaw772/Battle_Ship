require './lib/ship'

class Cell

  attr_accessor :coords, :ship_position, :coordinate

  def initialize(coordinate)
    @coordinate = coordinate
  end

  def place_ship(ship)
    ship_position = @coordinate
  end

  def fired_upon?
    return true if ship.health < ship.length
  end

  def fire_upon
    ship.hit
  end

  def render
    if fired_upon? == true
      ship_position = "H"
    elsif fired_upon? == true && ship.health = 0
      ship_position = "X"
    elsif fire_upon? == false
      @coordinate = "M"
    else
      @coordinate = "."
    end
  end
end
