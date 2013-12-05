class TicTacToe
  attr_accessor :board, :player
  attr_reader :player_symbol, :computer_symbol
  SYMBOLS = [:X, :O]

  def initialize current_player = (rand() > 0.5 ? :computer : :player), symbol = SYMBOLS.sample
    @player = "Player"
    @computers_turn = current_player == :computer ? true : false
    @player_symbol = symbol.to_sym
    @computer_symbol = @player_symbol == SYMBOLS[0] ? SYMBOLS[1] : SYMBOLS[0];

    @wins = [      
      [:A1,:A2,:A3],
      [:B1,:B2,:B3],
      [:C1,:C2,:C3],
      
      [:A1,:B1,:C1],
      [:A2,:B2,:C2],
      [:A3,:B3,:C3],
      
      [:A1,:B2,:C3],
      [:C1,:B2,:A3]
    ]

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
    @board[spot] = @computer_symbol
    @computers_turn = !@computers_turn
    spot
  end

  def computer_find_spot
    open_spots.sample
  end

  def indicate_player_turn
    print "#{@player}'s Move:"
  end

  def get_player_move i = gets
    indicate_player_turn
    i.chomp.upcase.to_sym
  end

  def player_move
    spot = get_player_move.to_sym
    r = spot
    if @board[spot] != " "
      r = spot_taken
    else
      @board[spot] = @player_symbol
    end
    r
  end

  def spot_taken
    print "spot already taken"
    player_move
  end

  def open_spots
    spots = []
    @board.each{|k, v| spots << k if v == " " }
    spots
  end

  def determine_winner
    @wins.each do |win|
      if @board[win[0]] == @board[win[1]] && @board[win[1]] == @board[win[2]]
        @player_won = @board[win[0]] == @player_symbol ? true : false
      end
    end
  end

  def spots_open?
    @board.values.inject(false){|r, v| r = true if v == " "}
  end

  def player_won?
    determine_winner
    @player_won || nil
  end

  def over?
    !spots_open? || player_won? != nil ? true : false
  end

  def draw?
    r = false
    if over? && player_won? == nil
      puts "test"
      r = true
    end
    r
  end

  def current_state
    <<-eos
        a   b   c"

     1   #{@board[:A1].to_s} | #{@board[:B1].to_s} | #{@board[:C1].to_s}
        --- --- ---
     2   #{@board[:A2].to_s} | #{@board[:B2].to_s} | #{@board[:C2].to_s}
        --- --- ---
     3   #{@board[:A3].to_s} | #{@board[:B3].to_s} | #{@board[:C3].to_s}
    eos
  end
end
