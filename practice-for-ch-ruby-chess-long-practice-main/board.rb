class Board 

    def initialize 
        @board = Array.new(8) {Array.new(8, [])}
        @board[0..1].each do |row|
            (0...row.length).each do |row[i]|
                row[i] << Piece.new
            end 
        end 

        @board[2..5].each do |row|
            (0...row.length).each do |row[i]|
                row[i] << NullPiece.new
            end 
        end 

        @board[6..7].each do |row|
            (0...row.length).each do |row[i]|
                row[i] << Piece.new
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
        @board[start_pos] = 
    end 

    




end 