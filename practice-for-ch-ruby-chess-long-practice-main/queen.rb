require_relative 'slideable'
require_relative 'piece'

class Queen < Piece
    include Slideable
    def symbol
        p '♕'.colorize(color)
    end

    def move_dirs
        HORIZONTAL_DIRS
        DIAGONAL_DIRS
    end

end