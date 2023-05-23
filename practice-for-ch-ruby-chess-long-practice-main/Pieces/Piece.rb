class Piece
  attr_reader :color, :board, :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    "#{self.symbol} : #{color}"
  end

  def empty?
    return true if self.symbol == 'null'
  end 

end
