class TicTacToe
  attr_accessor :player, :computer, :player_symbol, :computer_symbol
  SYMBOLS = [@player_symbol, @computer_symbol]
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
    @player_symbol = symbols.fetch(symbols.index(name[1]))
    @computer_symbol = symbols.delete(symbols.index(@player_symbol))
    @player = name.first.to_s.capitalize
  end

  def indicate_player_turn
  end

  def get_player_move
  end
end