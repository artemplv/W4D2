require_relative "Slideable"
require_relative "Piece"

class Bishop < Piece
  include Slideable

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "bishop"
  end

  def move_dirs
    self.diagonal_dirs
  end
end
