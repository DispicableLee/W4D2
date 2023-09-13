module Slideable

    attr_reader :HORIZONTAL_DIRS, DIAGONAL_DIRS

    HORIZONTAL_DIRS = [
        [-1, 0], # left
        [1, 0], # right
        [0, -1], # up (vertical)
        [0, 1]  # down (vertical)
    ].freeze

    DIAGONAL_DIRS = [
        [-1, -1], # up + left
        [-1, 1], # up + right
        [1, -1], # down + left
        [1, 1]  # down + right
    ].freeze


    def moves
        moves_array = []
        move_dirs.each do |direction|
            unblocked_moves = grow_unblocked_moves_in_dir(direction)
            moves_array << unblocked_moves
        end 
        moves_array
    end 


    private
    
    def move_dirs
        raise NotImplementedError 
    end


    def grow_unblocked_moves_in_dir(dx, dy)
        holder = [] 
        current_pos = self.pos

        while valid_moves.include?(next_pos)
        next_pos = [current_pos[0] + dx, current_pos[1] + dy] 
            if next_pos.empty? 
                holder << next_pos 
            elsif next_pos.empty? == false && self.color != @board[next_pos].color
                holder << next_pos 
            else 
                break
            end 
        end 
        holder 
    end 


end 

