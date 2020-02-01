require_relative 'game.rb'

class HearthStone
  game = Game.new("Standard")
  game.add_player("Deniz", "Karabacak", 10)
  game.add_player("Sıtkı", "Bağdat", 11)
end