module Stepable
  def move_diffs
    raise NotImplementedError
  end

  def moves
    res = []
    diffs = self.move_diffs
    x, y = self.pos

    diffs.each do |diff|
      dx, dy = diff
      next_pos = [x + dx, y + dy]
      next if !self.board.valid_pos?(next_pos)
      next if self.board[next_pos].color == self.color
      res << next_pos
    end

    return res
  end
end
