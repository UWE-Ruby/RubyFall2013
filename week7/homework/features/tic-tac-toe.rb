class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol
  SYMBOLS = @player_symbol, @computer_symbol

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    [@player, "Computer"].sample
  end

  def initialize name
  end
end