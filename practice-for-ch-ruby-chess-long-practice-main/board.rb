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

        @board[0, 0] = Rook.new
        # @board[0] = FIRST
        # @board[1].each do |i|
        #     i = Pawn.new
        # end 

        # @board[6].each do |i|
        #     i = Pawn.new


        # @board[0].each do |col|
        #         col = Piece.new("white", @board, row[i])
        #     end 
        # end 

        # # @board[1].each do |col|

        # @board[2..5].each do |row|
        #     (0...row.length).each do |i|
        #         row[i] = NullPiece.new
        #     end 
        # end 

        # @board[6..7].each do |row|
        #     (0...row.length).each do |i|
        #         row[i] = Piece.new 
        #     end 
        # end 
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