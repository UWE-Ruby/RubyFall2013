class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol, :board
  SYMBOLS = [:X, :O]
  @winner = false
  @game_over = false
  @current
  

  def welcome_player
    current_state
    "Welcome #{@player}"
  end

  def current_player
    @current ||= [@player, "Computer"].sample
    if @current == @player
      @current = "Computer"
    else
      @current = @player
    end
  end

  def initialize *name
    @current ||= name[0]
    name[1] ||= SYMBOLS.sample
    @player_symbol = (SYMBOLS.reject {|s| s != name[1]}).first
    @computer_symbol = (SYMBOLS.reject {|s| s == @player_symbol}).first
    @player = name.first.to_s.capitalize
    @board = {A1: ' ', A2: ' ', A3: ' ', 
              B1: ' ', B2: ' ', B3: ' ', 
              C1: ' ', C2: ' ', C3: ' '}
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def get_player_move
    gets.chomp.upcase
  end

  def computer_move
    move = open_spots.sample
    @board[move] = @computer_symbol.to_s
    move
  end

  def player_move
    entered_move = get_player_move.to_sym
    if open_spots.include? entered_move
      move = entered_move
    else
      move = player_move
    end
    @board[move] = @player_symbol.to_s
    move
  end

  def open_spots
    @board.inject(Array.new) do |remaining, (spot, fill)|
      remaining << spot if fill == ' '
      remaining
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

  def determine_winner
    if spots_open?
      [:X, :O].each do |token|
        @winner = (@winner or winning_lines token)
        @game_over = (@winner or winning_lines token)
      end
    else
      @winner = false
      @game_over = true
    end
  end

  def player_won?
    @winner
  end

  def computer_won?
    @winner
  end

  def over?
    @game_over
  end

  def draw?
    @game_over == true and @winner == false
  end

  def spots_open?
    @board.has_value?(' ')
  end

  private
  def winning_lines symbol
    winning_lines = [[:A1, :A2, :A3],
                     [:B1, :B2, :B3],
                     [:C1, :C2, :C3],
                     [:A1, :B1, :C1],
                     [:A2, :B2, :C2],
                     [:A3, :B3, :C3],
                     [:A3, :B2, :C1],
                     [:A1, :B2, :C3]]
    winning_lines.inject(false) do |won, line|
      line_wins = line.inject(true) do |winning, spot|
        # A single false creates a false value
        winning = (winning and @board[spot] == symbol)
      end
      # A single true creates a true value
      won = (won or line_wins)
    end
  end
end