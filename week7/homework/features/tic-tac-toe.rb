class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol
  SYMBOLS = @player_symbol, @computer_symbol
  @current

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @current = [@player, "Computer"].sample
  end

  def initialize *name
  end
end