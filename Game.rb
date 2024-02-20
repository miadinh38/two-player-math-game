class Game

  def initialize(player_1, player_2)
    @players = [ player_1, player_2 ]
    @current_player = @players[rand(0..1)] # select random player to play first
    @player_number = @players.index(@current_player) + 1
  end

  def run_game
    loop do
      if @players[0].lives > 0 && @players[1].lives > 0
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
    display_score
  end
  
  def display_score
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    if @players[0].lives > 0 && @players[1].lives > 0
      puts "----- NEW TURN -----"
    end
  end

  def switch_player
    @current_player = (@current_player == @players[0]) ? @players[1] : @players[0]
    @player_number = @players.index(@current_player) + 1
  end

  def turn_new_round
  end

  def end_game
    winner_player = @players[@player_number -1]
    puts "Player #{@player_number} wins with score #{winner_player.lives}/3"
    puts " ---- GAME OVER ---- "
    puts "Goodbye!"
  end

end

