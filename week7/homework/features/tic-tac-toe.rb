class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol
  SYMBOLS = @player_symbol, @computer_symbol
  @current

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    if @current == "Computer"
      @current = "Computer"
    else
      @current = @player
    end
    @current
  end

  def initialize *name
    @current = [@player, "Computer"].sample unless name[0]
  end
end