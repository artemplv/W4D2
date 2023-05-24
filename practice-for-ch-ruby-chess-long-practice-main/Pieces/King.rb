require_relative "Piece"
require_relative "Stepable"

class King < Piece
  include Stepable

  def initialize(color, board, pos)
    super
  end

  def symbol
    if self.color == :white
        return "♔"
    else
        return "♚"
    end 
  end

  def move_diffs
    [[-1, 0], [-1, 1], [0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1]]
  end
end
