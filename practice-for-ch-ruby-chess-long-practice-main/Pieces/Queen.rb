require_relative "Slideable"
require_relative "Piece"

class Queen < Piece
  include Slideable 
  def initialize(color, board, pos)
    super
  end

  def symbol
    if self.color == :white
        return "♕"
    else
        return "♛"
    end 
  end

  def move_dirs
    self.horizontal_dirs + self.diagonal_dirs
  end
end
