require_relative "piece"
require_relative "null_piece"
require_relative 'rook'
require "byebug"


class Board 
    attr_accessor :board

    FIRST = %i(rook, knight, bishop, king, queen, bishop, knight, rook)
    LAST = FIRST.reverse
    def initialize 
        @board = Array.new(8) {Array.new(8, [])}


        @board[0].each do |row|
            (0...row.length).each do |i|
                row[i] = Piece.new("white", @board, row[i])
            end 
        end 

        @board[2..5].each do |row|
            (0...row.length).each do |i|
                row[i] = NullPiece.new
            end 
        end 

        @board[6..7].each do |row|
            (0...row.length).each do |i|
                row[i] = Piece.new 
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