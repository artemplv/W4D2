require_relative "Slideable"


class Queen
include Slidable 
  def initialize(color, board, pos)
    super
  end

 def move_dirs
    self.horizontal_dirs + self.diagonal_dirs
  end

end
