class TicTacToe
  attr_accessor :player,:current_player,:board

  def initialize 
    @player = ""
    @SYMBOLS = ["X", "O"]
    @player_symbol = ""
    @computer_symbol = ""
    @over = false
    @current_player = ""
    @board = {
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
    }
    @open_spots = [:A1,:A2,:A3,:B1,:B2,:B3,:C1,:C2,:C3]
    @player_won = false
    @computer_won = false
    @draw = true
  end

  def welcome_player
    welcome = "Welcome "+ @player
    players = ["Computer", @player]
    @current_player = players.sample
    @SYMBOLS.shuffle
    @player_symbol = @SYMBOLS[0]
    @computer_symbol = @SYMBOLS[1]
    welcome
  end

  def computer_move
    puts "Computer moves"
    cMove = @open_spots.sample
    @board[cMove]=@computer_symbol
    @open_spots.delete(cMove)
    @current_player=@player
  end

  def indicate_player_turn
    puts @player + "'s Move:"
  end

  def player_move
    pMove = gets.chomp
    @board[pMove.to_sym]=@player_symbol
    @open_spots.delete(pMove.to_sym)
    @current_player="Computer"   
  end

  def current_state
    current_state = "-----\n "+"#{@board[:A1]}"+"#{@board[:A2]}"+"#{@board[:A3]}"+"\n "+"#{@board[:B1]}"+"#{@board[:B2]}"+"#{@board[:B3]}"+"\n "+"#{@board[:C1]}"+"#{@board[:C2]}"+"#{@board[:C3]}"+"\n-----"
  end

  def over?
    if @open_spots.empty?
      @over = true
    end
    puts @open_spots
    puts "\n "
    @over
  end

  def player_won?
    @player_won
  end

  def computer_won?
    @computer_won
  end

  def draw?
    @draw
  end
  
  def determine_winner
   
  end

end

