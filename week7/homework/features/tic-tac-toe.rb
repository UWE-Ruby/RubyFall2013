class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol
  SYMBOLS = @player_symbol, @computer_symbol
  @computer = "computer"
  @current
  @player_symbol
  @computer_symbol

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    if @current == @computer
      @current = @player
    else
      @current = @computer
    end
    @current
  end

  def initialize *name
    @current = [@player, @computer].sample unless name[0]
    if name[1] == 'X'
      @player_symbol = :O
      @computer_symbol = :X
    else
      @player_symbol = :X
      @computer_symbol = :O
    end
  end

  def indicate_player_turn
  end

  def get_player_move
  end
end