require './Player.rb'
require './Question.rb'
require './Game.rb'

player1 = Player.new
player2 = Player.new
game = Game.new(player1, player2)

game.run_game