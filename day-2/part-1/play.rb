require_relative './game'

game = Game.new
game.play
puts "Score: #{game.score}"
