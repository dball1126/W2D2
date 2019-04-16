require_relative "piece"
require_relative 'nullpiece'
require 'byebug'
class Board

    attr_reader :rows


    def initialize
        @rows = Array.new(8){ Array.new(8) }
        @sentinel = NullPiece.instance
        self.populate_board
    end

    def [](pos)
        row, col = pos
        rows[row][col]
    end

    def []=(pos, value)
        row, col = pos 
        @rows[row][col] = value 
    end

    def move_piece(start_pos, end_pos) # need to add color to arguments
        
        if valid_pos?(start_pos) && valid_pos?(end_pos)
            
            self[end_pos] = self[start_pos]
            self[start_pos] = sentinel
            
            self[end_pos].pos = end_pos
          
            
           
        elsif !valid_pos?(start_pos)
            begin
                
            rescue => exception
                
            end

        end

    end

    def valid_pos?(pos)
        
        # return false if self[pos].nil?
        return false unless(0..7).include?(pos[0]) && (0..7).include?(pos[1])
        true
        
    end
            #NEXT STEP POPULATE THE BOARD
    def add_piece(piece, pos)
        # piece = Piece.New(white, self, [0,0])
          new_piece = piece.new(color, self, pos)
          # raise error if piece is already in this position
          self[pos] = piece
    end

    def populate_board
        @rows.each_with_index  do |row, r_num|
            row.each_with_index do |col, c_num|
                if r_num == 0 || r_num == 1
                    self[[r_num, c_num]] = Piece.new(:red, self, [r_num, c_num]) #review how self ties to board attr in piece class
                elsif r_num == 6 || r_num == 7
                    self[[r_num, c_num]] = Piece.new(:green, self, [r_num, c_num]) #review how self ties to board attr in piece class
                else
                    self[[r_num, c_num]] = NullPiece.instance
                end
            end
        end
    end

    def checkmate?(color)
    end

    def in_check?(color)
        
    end

    def find_king(color)
    end

    def pieces
        piece_hash = Hash.new{ |h, k| h[k] = nil }

    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end

    private
    attr_reader :sentinel
end

new_board = Board.new
#p new_board.populate_board
board = new_board
puts 
puts
puts

p board.move_piece([0,0],[3,0])

p board[[0,0]]
p board[[3,0]].pos
p board[[0,1]].pos

