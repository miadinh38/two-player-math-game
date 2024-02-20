class Game

  def initialize(player_1, player_2)
    @players = [ player_1, player_2 ]
    @current_player = @players[rand(0..1)] # select random player to play first
  end

  def run_game
  end

  def switch_player
    if @current_player == player_1
      @current_player == player_2
    else
      @current_player == player_1
    end
  end

  def turn_new_round
  end

end