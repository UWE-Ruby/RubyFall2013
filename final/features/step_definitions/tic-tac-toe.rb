class TicTacToe
  attr_accessor :player
  attr_reader :current_player, :player_symbol, :computer_symbol
  SYMBOLS = ["X", "O"]

  def initialize player
    @player = "Player"
    @current_player = @current_player || [@player, "Computer"].sample
    if @current_player == "Computer"
      @computer_symbol = SYMBOLS[0]
      @player_symbol = SYMBOLS[1]
    else
      @computer_symbol = SYMBOLS[1]
      @player_symbol = SYMBOLS[0]
    end
  end

  def welcome_player
    "Welcome #{@player}"
  end

end
