require_relative "Piece"
require_relative "Slideable"

class Rook < Piece
    include Slideable 

  def initialize(color, board, pos)
    super
  end

  def symbol
    if self.color == :white
        return "♖"
    else
        return "♜"
    end 
  end

  private

  def move_dirs
    self.horizontal_dirs
  end

end
