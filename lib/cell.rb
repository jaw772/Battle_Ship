require './lib/ship'

class Cell
  attr_reader :coordinate
  attr_accessor :a_row, :b_row, :c_row, :d_row\
  attr_accessor :coords, :ship_position
  def initialize(coordinate)
    @coordinate = coordinate
    @a_row = [".", ".", ".", "."]
    @b_row = [".", ".", ".", "."]
    @c_row = [".", ".", ".", "."]
    @d_row = [".", ".", ".", "."]
  end

  def place_ship(ship)
    ship_position = @coordinate
  end
  def fired_upon?
    return true if ship.health < ship.length
  end

  def fire_upon
    ship.hit

  def render
    if fired_upon? == true

  end
end
