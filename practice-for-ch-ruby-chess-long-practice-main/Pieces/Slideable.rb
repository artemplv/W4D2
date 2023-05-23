module Slideable 
    HORIZONTAL_DIRS = [[1,0], [-1,0], [0,-1], [0, 1]]
    DIAGONAL_DIRS = [[1,1], [1,-1], [-1,-1],[-1, -1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end 

    def diagonal_dirs 
        DIAGONAL_DIRS
    end 

    def moves
        res = []
        dirs = self.move_dirs
        x, y = self.pos

        dirs.each do |dir|
            dx, dy = dir
            new_pos = [x + dx, y + dy]
            res << new_pos if self.board.valid_pos?(new_pos)
        end
        
    end 

end 
