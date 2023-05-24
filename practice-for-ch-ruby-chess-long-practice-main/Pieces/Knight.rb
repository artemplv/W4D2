require_relative "Piece"

class Knight < Piece
  def initialize(color, board, pos)
    super
  end

  def symbol
    return "knight"
  end
end