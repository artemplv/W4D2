require_relative "Piece"

require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    super(nil, nil, nil)
  end

  def symbol 
    return "null"
  end 

end
