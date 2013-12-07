class TicTacToe
  attr_accessor :player, :computer, :player_symbol, :computer_symbol, :board
  SYMBOLS = [:X, :O]
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
    name[1] ||= SYMBOLS.sample
    @player_symbol = (SYMBOLS.reject {|s| s != name[1]}).first
    @computer_symbol = (SYMBOLS.reject {|s| s == @player_symbol}).first
    @player = name.first.to_s.capitalize
    @board = {A1: ' ', A2: ' ', A3: ' ', 
              B1: ' ', B2: ' ', B3: ' ', 
              C1: ' ', C2: ' ', C3: ' '}
  end

  def indicate_player_turn
  end

  def get_player_move
  end

  def computer_move
    move = open_spots.sample
    @board[move] = @computer_symbol.to_s
    move
  end

  def player_move
    move = get_player_move
    @board[move] = @player_symbol.to_s
    move.to_sym
  end

  def open_spots
    @board.map do |spot, fill|
      spot if fill == ' '
    end
  end

  def current_state
    #current state is a display method, building a string that pleasingly displays the @board
    <<-board
      1   2   3
    A #{@board[:A1]} | #{@board[:A2]} | #{@board[:A3]} 
     --- --- ---
    B #{@board[:B1]} | #{@board[:B2]} | #{@board[:B3]} 
     --- --- ---
    C #{@board[:C1]} | #{@board[:C2]} | #{@board[:C3]} 
    board
  end
end