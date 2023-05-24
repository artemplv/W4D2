require_relative "Piece"

class Pawn < Piece
  def initialize(color, board, pos)
    super
  end

   def symbol
    if self.color == :white
        return "♙"
    else
        return "♟"
    end 
  end

end

