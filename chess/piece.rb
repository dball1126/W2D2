class Piece
attr_accessor :pos
attr_reader :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    # def pos=(val)
    #     debugger
    #     @pos = val
    # end

    def to_s
        ' P '
    end

    def empty?
    end

    def valid_moves
    end

    def symbol 
    end 

    private

    def move_into_check?(end_pos)
    end
end