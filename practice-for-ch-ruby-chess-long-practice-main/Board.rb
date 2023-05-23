require_relative "/Pieces/Piece"

class Board
  def initialize
    @rows = Array.new(8) { Array.new(8) { Piece.new("null") } }
    self.fillBoard
  end

  def inspect
    "id: #{self.object_id}, rows: #{@rows}"
  end

  def printBoard
    @rows.each do |row|
      row.each do |cell|
        print [cell.type]
      end
      print "\n"
    end
    nil
  end

  def move_piece(start_pos, end_pos)
    if !valid_pos?(start_pos)
      raise "Not a valid starting position"
    elsif self[start_pos].type == "null"
      raise "There is no piece at this position"
    elsif !valid_pos?(end_pos)
      raise "Piece cannot move to end position"
    end
  end

  def valid_pos?(pos)
    x, y = pos

    return false if x > 7 || x < 0 || y > 7 || y < 0
    true
  end

  def [](pos)
    x, y = pos
    @rows[x][y]
  end

  private

  def fillBoard
    [1, 6].each do |idx|
      (0..7).each do |cellIdx|
        @rows[idx][cellIdx] = Piece.new("pawn")
      end
    end

    [0, 7].each do |idx|
      (0..7).each do |cellIdx|
        if cellIdx == 0 || cellIdx == 7
          @rows[idx][cellIdx] = Piece.new("rook")
        elsif cellIdx == 1 || cellIdx == 6
          @rows[idx][cellIdx] = Piece.new("knight")
        elsif cellIdx == 2 || cellIdx == 5
          @rows[idx][cellIdx] = Piece.new("bishop")
        elsif cellIdx == 3
          @rows[idx][cellIdx] = Piece.new("queen")
        elsif cellIdx == 4
          @rows[idx][cellIdx] = Piece.new("king")
        end
      end
    end
  end
end
