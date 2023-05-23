require_relative "Slideable"

class Bishop
  include Slideable

  def initialize(color, board, pos)
    super
  end

  def move_dirs
    self.diagonal_dirs
  end
end
