class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol
  SYMBOLS = @player_symbol, @computer_symbol
  @current = "Computer"

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    if @current == "Computer"
      @current = @player
    else
      @current = "Computer"
    end
    @current
  end

  def initialize *name
    @current = [@player, "Computer"].sample unless name[0]
  end
end