require_relative 'player'

class Game
    def initialize(game_type)
        @game_type = game_type
        @players = []
    end

    def add_player(first_name, last_name, level)
        player = Player.new(first_name, last_name, level)
        player.add_hero("Lookie")
        @players << player
    end
end