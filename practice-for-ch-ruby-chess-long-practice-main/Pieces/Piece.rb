class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    "#{self.symbol}"
  end

  def empty?
    return true if self.class == "NullPiece"
  end
end
