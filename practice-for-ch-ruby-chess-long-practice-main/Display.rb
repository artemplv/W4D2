require_relative 'cursor'
require "colorize" 

class Display
    attr_accessor :board, :cursor

    def initialize(board)
        @cursor = Cursor.new([0,0],board)
        @board = board
    end

    def render
        board.rows.each_with_index do |row, i|
            row.each_with_index do |cell, j|
                if [i, j] == cursor.cursor_pos
                    print cell.to_s.colorize(:background => :blue)
                else
                    print cell.to_s
                end
            end
            print "\n"
        end
        nil
    end
end 