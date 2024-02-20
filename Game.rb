require './Question'
require './Player'

class Game

  def initialize(player_1, player_2)
    @players = [ player_1, player_2 ]
    @current_player = @players[rand(0..1)] # select random player to play first
  end

  def run_game
    @current_player = Player.new

    if @current_player.lives > 0
      run_round
      switch_player
    end

    end_game
  end

  def run_round
    @current_player = Player.new
    @question = Question.new
    
    puts "#{@current_player}: #{@question.ask_question}"
    player_answer = gets.chomp.to_i
    puts player_answer
    check_player_answer(player_answer)
    
  end

  def check_player_answer(answer)
    if @question.is_answer_correct(answer)
      puts "Yes! You are correct"
    else
      puts "No."
      @current_player.lose_life
    end
  end

  def switch_player
    if @current_player == @players[0]
      @current_player == @players[1]
    else
      @current_player == @players[0]
    end
  end

  def turn_new_round
  end

  def end_game
    puts "#{@current_player} wins with score..."
    puts " ---- GAME OVER ---- "
    puts "Goodbye!"
  end

end

game = Game.new(1, 2)

pp game.run_game