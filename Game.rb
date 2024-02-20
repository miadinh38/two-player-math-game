require './Question'
require './Player'

class Game

  def initialize(player_1, player_2)
    @players = [ player_1, player_2 ]
    @current_player = @players[rand(0..1)] # select random player to play first
    @player_number = @players.index(@current_player) + 1
  end

  def run_game
    loop do
      if @current_player.lives > 0
        run_round
        switch_player
      else 
        end_game
        break
      end
    end

  end

  def run_round
    @question = Question.new
    
    puts "Player #{@player_number}: #{@question.ask_question}"
    player_answer = gets.chomp.to_i
    if @question.is_answer_correct(player_answer)
      puts "Player #{@player_number}: Yes! You are correct."
    else
      puts "Player #{@player_number}: Seriously? No!"
      @current_player.lose_life
    end
    # Display score 
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    puts "----- NEW TURN -----"
    
  end


  def switch_player
    if @current_player == @players[0]
      @current_player = @players[1]
      @player_number = @players.index(@current_player) + 1
    else
      @current_player = @players[0]
      @player_number = @players.index(@current_player) + 1
    end
  end

  def turn_new_round
  end

  def end_game
    puts "Player #{@player_number} wins with score..."
    puts " ---- GAME OVER ---- "
    puts "Goodbye!"
  end

end

player1 = Player.new
player2 = Player.new
game = Game.new(player1, player2)


pp game.run_game