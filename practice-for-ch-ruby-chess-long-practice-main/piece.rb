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
        "#{symbol}"
    end 


    def empty?
        false
    end 


    def valid_moves
        holder = []

        @board.each_with_index do |row, r|
            row.each_with_index do |col, c|
                holder << [r, c]
            end 
        end 

        holder 

    end 



    private 
    def symbol 
        raise NotImplementedError
    end 

end 


# bounds: row cannot be less than 0 and more than 7 
#         column cannot be less than 0 and more than 7 