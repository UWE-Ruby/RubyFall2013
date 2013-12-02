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
    @draw = false
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
    valid = false
    until  valid == true
      if @board.keys.include?(pMove.to_sym)==false
       puts "Invalid input!"
       pMove = gets.chomp
      elsif @open_spots.include?(pMove.to_sym)==false
       puts "Spot already taken!"
       pMove = gets.chomp
      else 
        valid = true
      end
    end
    @board[pMove.to_sym]=@player_symbol
    @open_spots.delete(pMove.to_sym)
    @current_player="Computer"   
  end

  def current_state
    current_state = "-----\n "+"#{@board[:A1]}"+"#{@board[:A2]}"+"#{@board[:A3]}"+"\n "+"#{@board[:B1]}"+"#{@board[:B2]}"+"#{@board[:B3]}"+"\n "+"#{@board[:C1]}"+"#{@board[:C2]}"+"#{@board[:C3]}"+"\n-----"
  end

  def over?
    #detect 3 consecutives symbols
    if (@board[:A1]==@board[:A2] && @board[:A1]==@board[:A3] && @board[:A1]=="X" ) || (@board[:B1]==@board[:B2] && @board[:B1]==@board[:B3] && @board[:B1]=="X" ) || (@board[:C1]==@board[:C2] && @board[:C1]==@board[:C3] && @board[:C1]=="X" ) || (@board[:A1]==@board[:B1] && @board[:A1]==@board[:C1] && @board[:A1]=="X" ) || (@board[:A2]==@board[:B2] && @board[:A2]==@board[:C2] && @board[:A2]=="X" ) || (@board[:A3]==@board[:B3] && @board[:A3]==@board[:C3] && @board[:A3]=="X" ) || (@board[:A1]==@board[:B2] && @board[:A1]==@board[:C3] && @board[:A1]=="X" ) || (@board[:A3]==@board[:B2] && @board[:A3]==@board[:C1] && @board[:A3]=="X" )
       if @player_symbol == "X"
          @player_won = true
       elsif @computer_symbol == "X"
          @computer_won = true
       end
       @over = true
    elsif (@board[:A1]==@board[:A2] && @board[:A1]==@board[:A3] && @board[:A1]=="O" ) || (@board[:B1]==@board[:B2] && @board[:B1]==@board[:B3] && @board[:B1]=="O" ) || (@board[:C1]==@board[:C2] && @board[:C1]==@board[:C3] && @board[:C1]=="O" ) || (@board[:A1]==@board[:B1] && @board[:A1]==@board[:C1] && @board[:A1]=="O" ) || (@board[:A2]==@board[:B2] && @board[:A2]==@board[:C2] && @board[:A2]=="O" ) || (@board[:A3]==@board[:B3] && @board[:A3]==@board[:C3] && @board[:A3]=="O" ) || (@board[:A1]==@board[:B2] && @board[:A1]==@board[:C3] && @board[:A1]=="O" ) ||
 (@board[:A3]==@board[:B2] && @board[:A3]==@board[:C1] && @board[:A3]=="O" )
       if @player_symbol == "O"
          @player_won = true
       elsif @computer_symbol == "O"
          @computer_won = true
       end
       @over = true
    elsif @open_spots.empty?
       @draw = true
       @over = true
    end
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

