class TicTacToe
  SYMBOLS = [:X,:O]
  attr_accessor :player, :board

  def initialize(current_player=nil,player_s=nil)
  	@player = player
  	@current_player = current_player || [:player, :computer].sample
  	choose_symbols(player_s)
  	@board = {
    :A1 => ' ', :A2 => ' ', :A3 => ' ',
  	:B1 => ' ', :B2 => ' ', :B3 => ' ',
  	:C1 => ' ', :C2 => ' ', :C3 => ' ',
  	}
  	@unplayed_moves = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
  end

  def choose_symbols(player_s)
  	player_s ||=SYMBOLS.sample
  	@player_symbol = {:computer => SYMBOLS.reject{|s| s==player_s}.first, :player => player_s}
  end

  def player_symbol
  	@player_symbol[:player]
  end

  def computer_symbol
  	@player_symbol[:computer]
  end

  def current_player
  	{:computer => "Computer", :player => @player}[@current_player]
  end

  def welcome_player
  	"Welcome #{@player}"
  end

  def drawboard
  	puts "A1|A2|A3 #{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
  	puts "--+--+-- -+-+-\n"
  	puts "B1|B2|B3 #{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
  	puts "--+--+-- -+-+-\n"
  	puts "C1|C2|C3 #{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
  end

  def current_state
  	"#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n
  	-+-+-\n
  	#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n
  	-+-+-\n
  	#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
  end

  def player_move
  	move = get_player_move.to_sym
  	until open_spots.include?(move)
  	  puts "that move is taken"
  	  move = get_player_move.to_sym
  	end
  	@board[move] = player_symbol
  	@unplayed_moves.reject!{|m| m==move}
    move
  end

  def get_player_move
  	gets.chomp
  end

  def computer_move
  	move = get_computer_move.to_sym
  	@board[move] = computer_symbol
  	@unplayed_moves.reject!{|m| m==move}
  	move
  end

  def get_computer_move
  	ai_dumb
  end

  def open_spots
  	@unplayed_moves
  end

  def ai_dumb
  	open_spots.sample
  end

  #def ai_line_full
  #end

  #def ai_line_friend
  #end

  #def ai_line_block
  #end

end
#www.eecs.berkeley.edu/~bh/pdf/v1ch06.pdf
#AI - http://edais.mvps.org/Tutorials/TTTAI/