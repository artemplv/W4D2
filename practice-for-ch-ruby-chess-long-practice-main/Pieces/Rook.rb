require_relative "Piece"

class Rook < Piece
  def initialize(color, board, pos)
    super
  end

  def symbol
    return "rook"
  end
end
