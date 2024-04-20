class Game
  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
  end

  def switch_player
    @current_player = @players.rotate!.first
  end

  def game_over?
    @players.any? { |player| !player.alive? }
  end

  def winner
    @players.find { |player| player.alive? }
  end
end
