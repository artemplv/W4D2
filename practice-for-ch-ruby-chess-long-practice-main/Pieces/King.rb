require_relative "Piece"

class King < Piece
  def initialize(color, board, pos)
    super
  end

  def symbol
    return "king"
  end
end