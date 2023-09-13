class Pawn

    def symbol 
        "♙".colorize(color)
    end 

    def moves 

    end 


    def at_start_row? 
        self.pos[0] == 1 || self.pos[1] == 6
    end 


    def forward_dir
        if self.at_start_row?

    end 

    def forward_steps

    end 

    def side_attacks

    end 





end 

pawn moves: 

[0 , 1]
[0, -1]
[1, 1]
[1, -1]




