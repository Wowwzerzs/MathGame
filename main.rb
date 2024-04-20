require_relative 'player'
require_relative 'game'
require_relative 'question'

# Create players
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# Initialize game
game = Game.new(player1, player2)

# Game loop
while !game.game_over?
  current_question = Question.new
  current_question.ask_question(game.current_player)

  game.switch_player

  puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
end


# Determine winner and display result
winner = game.winner
puts "#{winner.name} wins with a score of #{winner.lives}/3"
puts "------ GAME OVER ------"
puts "Goodbye!"
