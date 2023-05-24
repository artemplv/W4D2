require_relative "Piece"

class Pawn < Piece
  def initialize(color, board, pos)
    super
  end

  def symbol
    return "pawn"
  end
end