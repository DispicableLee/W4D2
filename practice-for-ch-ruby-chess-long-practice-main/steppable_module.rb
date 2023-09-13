module Stepable 

    def moves 
        holder = []
        current_pos = self.pos
        move_diffs.each do |spot|
        if self.empty? #piece
            holder << spot 
        elsif !(self.empty?) && self.color != @board[next_pos].color 
            holder << spot 
        end 
        holder 
    end 


    private






    def move_diffs
        raise NotImplementedError 
    end





end 