class TicTacToe
  attr_accessor :player, :computer, :player_symbol, :computer_symbol, :board
  SYMBOLS = [:X, :O]
  @current
  BOARD = { A1: ' ', A2: ' ', A3: ' ', 
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
    move = open_spots.sample
    BOARD[move] = @computer_symbol.to_s
    move
  end

  def open_spots
    BOARD.map do |spot, fill|
      spot if fill == ' '
    end
  end

  def current_state
    #current state is a display method, building a string that pleasingly displays the board
    <<-board
      1   2   3
    A #{BOARD[:A1]} | #{BOARD[:A2]} | #{BOARD[:A3]} 
     --- --- ---
    B #{BOARD[:B1]} | #{BOARD[:B2]} | #{BOARD[:B3]} 
     --- --- ---
    C #{BOARD[:C1]} | #{BOARD[:C2]} | #{BOARD[:C3]} 
    board
  end
end