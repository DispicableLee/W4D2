require_relative 'slideable'
require_relative 'piece'

class Rook < Piece

    include Slideable

    def symbol
        '♗'.colorize(color)
    end


    protected

    def move_dirs
        DIAGONAL_DIRS
    end


end