require_relative "Slideable"
require_relative "Piece"

class Queen < Piece
  include Slideable 
  def initialize(color, board, pos)
    super
  end

  def symbol
    return "queen"
  end

  def move_dirs
    self.horizontal_dirs + self.diagonal_dirs
  end
end
