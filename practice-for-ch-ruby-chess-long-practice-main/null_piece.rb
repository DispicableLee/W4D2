require_relative 'piece'


class NullPiece < Piece
    include Singleton
    
    attr_reader :color

    def initialize
        @color = nil
        @board = nil
        @pos = nil
    end


    def symbol
        " "
    end

    def moves 
        nil
    end


end 