require_relative 'slideable_module'
require_relative 'piece'

class Rook < Piece

    include Slideable

    def symbol
        '♖'.colorize(color)
    end


    protected

    def move_dirs
        HORIZONTAL_DIRS
    end


end