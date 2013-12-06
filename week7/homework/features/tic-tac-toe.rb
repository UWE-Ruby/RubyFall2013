class TicTacToe
  attr_accessor :player, :computer, :player_symbol, :computer_symbol, :board
  SYMBOLS = [:X, :O]
  @current
  BOARD = {A1: ' ', A2: ' ', A3: ' ', 
            B1: ' ', B2: ' ', B3: ' ', 
            C1: ' ', C2: ' ', C3: ' '}

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
    name[1] ||= SYMBOLS.sample
    @player_symbol = (SYMBOLS.reject {|s| s != name[1]}).first
    @computer_symbol = (SYMBOLS.reject {|s| s == @player_symbol}).first
    @player = name.first.to_s.capitalize
  end

  def indicate_player_turn
  end

  def get_player_move
  end

  def computer_move
    # Should sample all the open spots, and fill it on the board with the computer_symbol
  end

  def open_spots
    # Should work through the board, making an array of all open spots
    BOARD.map do |spot, fill|
      spot if fill == ' '
    end
  end
end