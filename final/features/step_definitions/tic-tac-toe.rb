class TicTacToe
  attr_accessor :board, :player
  attr_reader :player_symbol, :computer_symbol
  SYMBOLS = ["X", "O"]

  def initialize player = "Player"
    @player = player

    @computers_turn = rand() > 0.5 ? true : false
    if @computers_turn
      @computer_symbol = SYMBOLS[0]
      @player_symbol = SYMBOLS[1]
    else
      @computer_symbol = SYMBOLS[1]
      @player_symbol = SYMBOLS[0]
    end

    @board = {
      :A1 => false, :A2 => false, :A3 => false,
      :B1 => false, :B2 => false, :B3 => false,
      :C1 => false, :C2 => false, :C3 => false
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
    find_empty_spots.sample
  end

  def indicate_player_turn
    "#{@player}'s Move:"
  end

  def get_player_move
    STDOUT.flush
    input = gets.chomp.upcase.to_sym
    move(input)
  end

  def find_empty_spots
    spots = []
    @board.each{|k, v| spots << k if v == false }
    spots
  end

  def move spot
    if @board[spot] == false
      symbol = @computers_turn ? @computer_symbol : @player_symbol
      @board[spot] = symbol
      next_turn
    end
  end

  def next_turn
    @computers_turn = !@computers_turn
  end
end
