require './lib/ship'

class Cell
  attr_reader :coordinate
  def initialize(coordinate)
    @coordinate = coordinate
  end

  def place_ship(ship)
  end
end
