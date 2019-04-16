require_relative "board"
require_relative "display"
require_relative "player"

class Game
  
    def initialize
        @board = board 
        @display = display 
        @players = Hash.new{ |h, k| h[k] = nil }
        @current_player = #symbol or player
        
    end

    def play 
    
    end

    private 

    def notify_players
    end

    def swap_turn!
    
    end
end