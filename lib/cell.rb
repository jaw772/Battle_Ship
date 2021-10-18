require './lib/ship'

class Cell
  attr_reader :coordinate
  attr_accessor :a_row, :b_row, :c_row, :d_row\
  attr_accessor :coords
  def initialize(coordinate)
    @coordinate = coordinate
    @a_row = [".", ".", ".", "."]
    @b_row = [".", ".", ".", "."]
    @c_row = [".", ".", ".", "."]
    @d_row = [".", ".", ".", "."]
    #@coords = []
  end

  def place_ship(ship)
    puts "Where would you like to place your ship? Your ship requires #{ship.length} cells."
    puts
    puts "Choose #{ship.length} cells in order, vertically or horizontally, from A1-A4, B1-B4, C1-C4, D1-D4"
    puts
    puts "Enter your coordinates with a space in between"
    @coords << gets.chomp
    @coords.split(" ")
    @coords.each do |coord|
      
  end
  def fired_upon?
    return true if ship.health < ship.length
  end

  def fire_upon
    ship.hit
  end
end
