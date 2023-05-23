require_relative "Piece"

class Board

  def initialize
    @rows = Array.new(8) { Array.new(8) {Piece.new("null")}}
  end

  private
  def fillBoard
    [1,6].each do |idx|
        @rows[idx].each do |cell|
            cell = Piece.new("pawn")
        end 
    end 
    [0,7].each do |idx|
        @rows[idx].each_with_index do |cell, cellIdx|
        case cellIdx 
        when 0 || 7 
            cell = Piece.new("rook")
        when 1 || 6 
            cell = Piece.new("knight")
        when 2 || 5 
            cell = Piece.new("bishop")
        when 3 
            cell = Piece.new("queen")
        when 4
            cell = Piece.new("king")
        end 
    end 
  end 
  
end
