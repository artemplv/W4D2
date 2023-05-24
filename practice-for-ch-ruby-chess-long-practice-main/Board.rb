require_relative "Pieces/Piece"
require_relative "Pieces/NullPiece"
require_relative "Pieces/Bishop"
require_relative "Pieces/Queen"
require_relative "Pieces/Rook"
require_relative "Pieces/Pawn"
require_relative "Pieces/Knight"
require_relative "Pieces/King"
require "colorize" 

class Board
  attr_accessor :rows
  
  def initialize
    @rows = Array.new(8) { Array.new(8) { NullPiece.instance } }
    self.fillBoard
  end

  def inspect
    "id: #{self.object_id}, rows: #{@rows}"
  end

  def move_piece(start_pos, end_pos)
    if !valid_pos?(start_pos)
      raise "Not a valid starting position"
    elsif self[start_pos] == NullPiece.instance
      raise "There is no piece at this position"
    elsif !valid_pos?(end_pos)
      raise "Piece cannot move to end position"
    end

    self[end_pos] = self[start_pos]
    self[end_pos].pos = end_pos
    self[start_pos] = NullPiece.instance
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

  def []=(pos, val)
    x, y = pos
    @rows[x][y] = val
  end

  private

  def fillBoard
    fill_front_rows
    fill_back_rows
  end

  def fill_front_rows
    [:white, :black].each do |color|
      row_idx = color == :white ? 6 : 1

      (0..7).each do |cell_idx|
        @rows[row_idx][cell_idx] = Pawn.new(color, self, [row_idx, cell_idx])
      end
    end
  end

  def fill_back_rows
    [:white, :black].each do |color|
      row_idx = color == :white ? 7 : 0

      order = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

      (0..7).each do |cell_idx|
        @rows[row_idx][cell_idx] = order[cell_idx].new(color, self, [row_idx, cell_idx])
      end
    end
  end
end
