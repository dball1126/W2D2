require_relative "board"
require_relative "cursor"
require 'colorize'
require 'byebug'

class Display
    attr_reader :board, :cursor
    def board
        @board
    end

    def initialize(board)
        @board  = board 
        @cursor = Cursor.new([0,0], board)
    end

    
    def display_board
        @board.rows.each_with_index do |row, idx1|          
            display_arr = []

            row.each_with_index do |col, idx2| 
            pointer = (@cursor.cursor_pos == [idx1, idx2])
                
                if pointer
                    display_arr << col.to_s.colorize(:color => col.color, :background => :white)
                elsif col.is_a?(NullPiece)
                    display_arr << col.to_s.colorize(:color => col.color, :background => nil)
                elsif col.is_a?(Piece) 
                    display_arr << col.to_s.colorize(:color => col.color, :background => nil)
                end
            end
            puts display_arr.join("")
        end
    end

#     def self.print_grid(rows)
#         rows.each do |row|
#         puts row.join(" ")
#     end
#   end

    def print
        self.display_board
    end


end

new_board = Board.new
#p new_board.populate_board
board = new_board
 board.move_piece([0,0],[3,0])


display = Display.new(board)


flag = 5

while flag < 10 
    system "clear"
    display.print
    puts
    puts
    display.cursor.get_input
    flag += 1
end
