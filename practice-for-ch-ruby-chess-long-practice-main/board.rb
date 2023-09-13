require_relative "piece"
require_relative "null_piece"
require_relative 'rook'
require "byebug"


require_relative "piece"

class Board 
    attr_accessor :board


    # FIRST = %w(Rook.new, Knight.new, Bishop.new, King.new, Queen.new, Bishop.new, Knight.new, Rook.new)
    # LAST = FIRST.reverse
    def initialize 
        @board = Array.new(8) {Array.new(8, [])}


        # BLACK   rooks, knights, bishops, king, queen, etc
        @board[0].each_index do |i|
            if i == 0 || i == 7
                @board[7][i] << Rook.new("Black", @board, [7,i])
            elsif i == 1 || i == 6
                @board[7][i] << Bishop.new("Black", @board, [7,i])
            elsif i == 2 || i == 5
                @board[7][i] << Knight.new("Black", @board, [7,i])
            elsif i == 4 
                @board[7][i] << King.new("Black", @board, [7, i])
            elsif i == 3
                @board[7][i] << Queen.new("Black", @board, [7, i])
            end
        end

        # BLACK pawns
        @board[1].each_index do |i|
            self[1][i] << Pawn.new("Black", @board, [1,i])
        end

        # WHITE pawns
        @board[6].each_index do |i|
            self[6][i] << Pawn.new("White", @board, [6,i])
        end
        # WHITE   rooks, knights, bishops, king, queen, etc
        @board[7].each_index do |i|
            if i == 0 || i == 7
                @board[7][i] << Rook.new("White", @board, [7,i])
            elsif i == 1 || i == 6
                @board[7][i] << Bishop.new("White", @board, [7,i])
            elsif i == 2 || i == 5
                @board[7][i] << Knight.new("White", @board, [7,i])
            elsif i == 3 
                @board[7][i] << King.new("White", @board, [7, i])
            elsif i == 4
                @board[7][i] << Queen.new("White", @board, [7, i])
            end
        end





    end 

    def [](pos)
        row, col = pos 
        @board[row][col]
    end 

    def []=(pos, val)
        row, col = pos 
        @board[row][col] = val
    end 

    def move_piece(start_pos, end_pos)
        raise "error" if self[start_pos].is_a?(NullPiece)
        raise "error" if self[end_pos].is_a?(Piece)
        # debugger
        temp = self[start_pos]
        self[end_pos] = temp
        self[start_pos] = NullPiece.new 
    end 


    def print
        @board.each do |piece|
            p piece.to_s
        end
    end


end 


# b = Board.new
# b.move_piece([0,0], [3, 3])