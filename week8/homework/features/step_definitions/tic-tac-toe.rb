class TicTacToe
  SYMBOLS = [:X,:O]
  attr_accessor :player, :board, :status
  def initialize(current_player=nil,game_symbols=nil)
    @board = {:A1 => ' ', :A2 => ' ', :A3 => ' ',
              :B1 => ' ', :B2 => ' ', :B3 => ' ',
              :C1 => ' ', :C2 => ' ', :C3 => ' '}
    @status = status          
    @current_player = current_player || [:computer, :player].shuffle[0]
    choose_player_symbol(game_symbols)
  end
  def choose_player_symbol(game_symbols=nil)
    game_symbols ||= SYMBOLS.shuffle[0]
    @player_symbol = {
            :computer => SYMBOLS.reject{|s| s==game_symbols}.first,
            :player => game_symbols 
    }
  end
  def computer_symbol
    @player_symbol[:computer]
  end
  
  def player_symbol
    @player_symbol[:player]
  end
  
  def current_player
    {:computer => "Computer", :player => @player}[@current_player]
  end
  
  def welcome_player
    "Welcome #{@player}"
  end
  
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end
  def get_player_move
    gets.chomp.capitalize
  end
  def player_move
    move = get_player_move.to_sym
    until open_spots.include?(move)
         move = get_player_move.to_sym 
    end
    @board[move] = player_symbol
    @current_player = :computer
    move
  end
  def computer_move
    move = @board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}.shuffle[0]
    @board[move] = computer_symbol
    @current_player = :player
    move
  end
  ###
  def current_state
    row1 = "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
    row2 = "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
    row3 = "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
    row1 + "-"*row1.size+"\n"+
    row2 + "-"*row2.size+"\n"+
    row3 + "-"*row3.size+"\n"+
    "******"
  end
  def determine_winner
    person_spots = @board.select{|k,v| v==player_symbol}
    computer_spots = @board.select{|k,v| v==computer_symbol}
    @player_win = false
    @computer_win = false
    @player_win = check_winner(person_spots)
    @computer_win = check_winner(computer_spots)
  end
  def check_winner(player_spots_selected)
    return true if player_spots_selected.has_key?(:A1) && player_spots_selected.has_key?(:A2) && player_spots_selected.has_key?(:A3)
    return true if player_spots_selected.has_key?(:B1) && player_spots_selected.has_key?(:B2) && player_spots_selected.has_key?(:B3)
    return true if player_spots_selected.has_key?(:C1) && player_spots_selected.has_key?(:C2) && player_spots_selected.has_key?(:C3)
    
    return true if player_spots_selected.has_key?(:A1) && player_spots_selected.has_key?(:B1) && player_spots_selected.has_key?(:C1)
    return true if player_spots_selected.has_key?(:A2) && player_spots_selected.has_key?(:B2) && player_spots_selected.has_key?(:C2)
    return true if player_spots_selected.has_key?(:A3) && player_spots_selected.has_key?(:B3) && player_spots_selected.has_key?(:C3)
    
    return true if player_spots_selected.has_key?(:A1) && player_spots_selected.has_key?(:B2) && player_spots_selected.has_key?(:C3)
    return true if player_spots_selected.has_key?(:A3) && player_spots_selected.has_key?(:B2) && player_spots_selected.has_key?(:C1)
   end
  def player_won?
    !@player_win? false : true
  end
  def computer_won?
    !@computer_win? false : true
  end
  
  def draw?
    !player_won? && !computer_won?
  end
  
  def over?
    player_won? || computer_won? || !spots_open?
  end
  
  def spots_open?
    !open_spots.empty?
  end
  
  def open_spots
    @board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}
  end
 end