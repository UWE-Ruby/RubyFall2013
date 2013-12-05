class TicTacToe
  attr_accessor :player, :computer, :player_symbol, :computer_symbol
  SYMBOLS = []
  @current

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
    symbols = [:X, :O]
    name[1] ||= symbols.sample
    @player_symbol = (symbols.reject {|s| s != name[1]}).first
    @computer_symbol = (symbols.reject {|s| s == @player_symbol}).first
    @player = name.first.to_s.capitalize
    SYMBOLS << @player_symbol << @computer_symbol
  end

  def indicate_player_turn
  end

  def get_player_move
  end
end