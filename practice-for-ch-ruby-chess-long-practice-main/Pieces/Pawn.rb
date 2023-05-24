require_relative "Piece"
require_relative "NullPiece"

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

  def moves
    all = []
    all += self.forward_steps + self.side_attacks
  end

  private

  def at_start_row?
    if self.color == :black && self.pos.first == 1
      return true
    elsif self.color == :white && self.pos.first == 6
      return true
    else
      return false
    end
  end

  def forward_dir
    if self.color == :black
      return 1
    else
      return -1
    end
  end

  def forward_steps
    x = self.pos.first
    steps = [[x + forward_dir, 0]]
    
    if self.at_start_row?
      steps << [x + forward_dir * 2, 0]
    end

    steps
  end

  def side_attacks
    x, y = self.pos
    attacks = []

    new_pos1 = [x + forward_dir, y + 1]
    new_pos2 = [x + forward_dir, y - 1]

    if self.board[new_pos1].color != self.color && self.board[new_pos1] != NullPiece.instance
      attacks << new_pos1
    end
    if  self.board[new_pos2].color != self.color && self.board[new_pos2] != NullPiece.instance
      attacks << new_pos2
    end

    attacks
  end

end

