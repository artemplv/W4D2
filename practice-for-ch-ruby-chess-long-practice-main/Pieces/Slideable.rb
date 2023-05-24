require_relative "NullPiece"

module Slideable
  HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, -1], [0, 1]]
  DIAGONAL_DIRS = [[1, 1], [1, -1], [-1, -1], [-1, 1]]

  def horizontal_dirs
    HORIZONTAL_DIRS
  end

  def diagonal_dirs
    DIAGONAL_DIRS
  end

  def move_diffs
    raise NotImplementedError
  end

  def moves
    res = []
    dirs = self.move_dirs

    dirs.each do |dir|
      dx, dy = dir
      res += grow_unblocked_moves_in_dir(dx, dy)
    end

    return res
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    accumulator = []
    last_pos = self.pos
    x, y = last_pos
    next_pos = [x + dx, y + dy]

    while self.board.valid_pos?(next_pos) && self.board[next_pos].color != self.color
      accumulator << next_pos

      if self.board[next_pos].color != self.color && self.board[next_pos] != NullPiece.instance
        return accumulator
      end

      last_pos = next_pos
      x, y = last_pos
      next_pos = [x + dx, y + dy]
    end

    return accumulator
  end
end
