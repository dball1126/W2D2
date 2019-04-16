require_relative "piece"
require_relative 'slideable'

class RookBishopQueen < Piece
    include Slideable 
    
    def symbol
    end

    protected
    def move_dirs
    end
end

