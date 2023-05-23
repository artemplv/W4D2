require_relative "Piece"
require_relative "Slideable"

class Rook < Piece
    include Slideable 

  def initialize(color, board, pos)
    super
  end

  def symbol
    return "rook"
  end

  private

  def move_dirs
    self.horizontal_dirs
  end

end
