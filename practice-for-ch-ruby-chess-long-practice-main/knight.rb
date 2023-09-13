require_relative 'piece'
require_relative 'steppable_module'

class Knight < Piece
    include Stepable
    MOVES = [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
    ]

    def symbol
        p '♘'.colorize(color)
    end



    protected
    def move_diffs
        MOVES
    end

end