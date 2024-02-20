class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

end

player_live = Player.new

pp player_live