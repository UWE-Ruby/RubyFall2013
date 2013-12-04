class TicTacToe
  attr_accessor :board, :player
  attr_reader :player_symbol, :computer_symbol
  SYMBOLS = [:X, :O]

  def initialize current_player = (rand() > 0.5 ? :computer : :player), symbol = SYMBOLS.sample
    @player = "Player"
    @computers_turn = current_player == :computer ? "Computer" : @player
    @player_symbol = symbol.to_sym
    @computer_symbol = @player_symbol == SYMBOLS[0] ? SYMBOLS[1] : SYMBOLS[0];

    @board = {
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
    }
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @computers_turn ? "Computer" : @player
  end

  def computer_move
    spot = computer_find_spot
    move(spot)
  end

  def computer_find_spot
    open_spots.sample
  end

  def indicate_player_turn
    "#{@player}'s Move:"
  end

  def get_player_move
    STDOUT.flush
    input = gets.chomp.upcase.to_sym
    move(input)
  end

  def open_spots
    spots = []
    @board.each{|k, v| spots << k if v == " " }
    spots
  end

  def move spot
    r = spot
    if @board[spot] == " "
      symbol = @computers_turn ? @computer_symbol : @player_symbol
      @board[spot] = symbol
      next_turn
    end
    r
  end

  def next_turn
    @computers_turn = !@computers_turn
  end

  def current_state
    <<-eos
        a   b   c"

     1   #{@board[:A1]} | #{@board[:B1]} | #{@board[:C1]}
        --- --- ---
     2   #{@board[:A2]} | #{@board[:B2]} | #{@board[:C2]}
        --- --- ---
     3   #{@board[:A3]} | #{@board[:B3]} | #{@board[:C3]}
    eos
  end
end
