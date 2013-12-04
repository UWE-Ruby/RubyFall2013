class TicTacToe
  attr_accessor :player
  
  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    [@player, "Computer"].sample
  end
end