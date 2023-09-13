require_relative 'piece'
require_relative 'steppable_module'

class King < Piece
    include Stepable
    MOVES = [
        [-1, 0], # left
        [1, 0], # right
        [0, -1], # up (vertical)
        [0, 1]  # down (vertical)
        [-1, -1], # up + left
        [-1, 1], # up + right
        [1, -1], # down + left
        [1, 1]  # down + right
    ].freeze


    def symbol
        p '♔'.colorize(color)
    end

    protected
    def move_diffs
        MOVES
    end

end