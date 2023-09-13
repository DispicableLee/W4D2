require_relative "board"

class Piece 

    attr_reader :board, :pos
    attr_writer :pos 


    def initialize(color, board, pos)
        @color = color 
        @board = Board.new
        @pos = pos
    end 

    def to_s
        p "#{symbol}"
    end 


    def empty?
        false
    end 


    def valid_moves
        
    end 



    private 
    def symbol 
        raise NotImplementedError
    end 












end 