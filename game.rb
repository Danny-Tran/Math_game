require "./player"
require "./question"
require "./turn"

class Game
    def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    end

    def start
        current_player = next_player? @player2
        while current_player.lives > 0
            Turn.new(current_player).run
            current_player = next_player? current_player
        end
    end

    def next_player? player
       if player == @player1
        return @player2
       else
        return @player1
       end
    end
end