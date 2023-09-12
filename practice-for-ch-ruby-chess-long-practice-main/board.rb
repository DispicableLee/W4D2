require_relative "piece"
require_relative "null_piece"
require "byebug"

class Board 

    def initialize 
        @board = Array.new(8) {Array.new(8, [])}


        @board[0..1].each do |row|
            (0...row.length).each do |i|
                row[i] = Piece.new
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
        raise "error" if @board[start_pos].is_a?(NullPiece)
        raise "error" if @board[end_pos].is_a?(Piece)
        debugger
        temp = @board[start_pos]
        @board[end_pos] = temp
        @board[start_pos] = NullPiece.new 
    end 


end 


# b = Board.new
# b.move_piece([0,0], [3, 3])