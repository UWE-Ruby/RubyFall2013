class TicTacToe
  SYMBOLS = [:X,:O]
  attr_accessor :player, :board

  def initialize(current_player=nil,player_s=nil)
  	@player = player
  	@current_player = current_player || [:player, :computer].sample # select whos first
  	choose_symbols(player_s) # setup player and computer symbols
  	@board = {
      :A1 => ' ', :A2 => ' ', :A3 => ' ',
  	  :B1 => ' ', :B2 => ' ', :B3 => ' ',
  	  :C1 => ' ', :C2 => ' ', :C3 => ' ',
  	  }
  	@winning_sets = 
  	  [:A1, :A2, :A3], [:B1, :B2, :B3], [:C1, :C2, :C3],
  	  [:A1, :B1, :C1], [:A2, :B2, :C2], [:A3, :B3, :C3],
  	  [:A1, :B2, :C3], [:A3, :B2, :C1]
  	@unplayed_moves = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
  	@winning_sym = [:NW]
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

  def current_state 
  	puts "A1|A2|A3 #{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
  	puts "--+--+-- -+-+-\n"
  	puts "B1|B2|B3 #{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
  	puts "--+--+-- -+-+-\n"
  	puts "C1|C2|C3 #{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def player_move
  	move = get_player_move.to_sym
  	until open_spots.include?(move) # insure the move is available
  	  puts "that move is taken"
  	  move = get_player_move.to_sym
  	end
  	@board[move] = player_symbol
  	@unplayed_moves.reject!{|m| m==move} # remove the move from available moves
    @current_player = :computer
    move
  end

  def get_player_move
  	gets.chomp
  end

  def computer_move
  	move = get_computer_move.to_sym
  	@board[move] = computer_symbol
  	@unplayed_moves.reject!{|m| m==move}
    @current_player = :player
  	move
  end

  def get_computer_move # random selection from open moves
  	ai_dumb
  end

  def open_spots
  	@unplayed_moves
  end

  def spots_open? #defined for cucumber tests - refactor
    !open_spots.empty?
  end

  def board_full?
  	open_spots.empty?
  end

  def ai_dumb
  	open_spots.sample
  end

  def determine_winner
  	# test diagonals, verticals and horizontals for uniform value
  	# test horizontls[:A1, :A2, :A3], [:B1, :B2, :B3], [:C1, :C2, :C3]
  	# test verticals [:A1, :B1, :C1], [:A2, :B2, :C2], [:A3, :B3, :C3]
  	# test diagonals [:A1, :B2, :C3], [:A3, :B2, :C1]
  	#
  	# if contents of any of the symbols in any of these arrays are all equal to :x or :o set 
  	# @winning_sym to that symbol
  	# 0..7
  	for n in 0..7
  	  if sym_test(n)
  		@winning_sym = sym_load(n)
  	  end
  	end
  end

  def win_sets # arrays of horizontal, vertical and diagonal positions
    @winning_sets
  end

  def win_sym #used in irb for testing
  	@winning_sym
  end

  def sym_load(set)
  	board[win_sets[set][0]]
  end

  def sym_test(set) #do it the hard way
  	board[win_sets[set][0]] == board[win_sets[set][1]] &&
  	board[win_sets[set][1]] == board[win_sets[set][2]] &&
  	board[win_sets[set][2]] != " "
  end

  def winning?
  	# if either computer or player have a winning set
  	@winning_sym == player_symbol || @winning_sym == computer_symbol
  end

  def over?
  	winning? || board_full?
  end

  def player_won?
  	@winning_sym == player_symbol
  end

  def computer_won?
  	@winning_sym == computer_symbol
  end

  def no_winner?
    @winning_sym != player_symbol && @winning_sym != computer_symbol
  end

  def draw?
  	board_full? && no_winner?
  end
end