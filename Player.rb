class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end

player_live = Player.new

pp player_live