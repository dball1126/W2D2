module Slideable

    def horizontal_dirs

    end

    def diagonal_dirs

    end

    def moves 
    end

    private
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def move_dirs #overwritten by subclass
    end

    def grow_unblocked_moves_in_dir(dx, dy)
    end
    
end