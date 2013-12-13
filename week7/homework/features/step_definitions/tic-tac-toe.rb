class TicTacToe

	attr_accessor :board
	attr_accessor :player_move
	attr_accessor :player_symbol
	attr_accessor :computer_symbol
	attr_accessor :player
	attr_accessor :current_player
	attr_accessor :player_won
	attr_accessor :computer_won

	SYMBOLS = [:X, :O]

	def initialize(current_player = :computer, player_symbol= :X, player = "")
		@player_symbol = player_symbol
		@current_player = current_player
		@player = player
		@board = {
		 "a1"=>" ","a2"=>" ","a3"=>" ",
		 "b1"=>" ","b2"=>" ","b3"=>" ",
		 "c1"=>" ","c2"=>" ","c3"=>" "
		}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player 
		if (@current_player == :computer)
			return "Computer"
		else
		@player
		end
	end

	def computer_symbol
		if (@player_symbol == :O)
			@player_symbol = :X
		else
			@computer_symbol = :O
		end
	end

	def indicate_palyer_turn
		puts "#{@player}'s Move:"
	end

	def computer_move
		computer_symbol
		move = open_spots.sample
		@board[move] = @computer_symbol
		move
		@current_player = player
	end

	def current_state
		@board.values
	end

	def open_spots
		spots = []
		@board.each{|k, v| spots << k if v == " " }
		spots
	end

	def get_player_move
		player_move = gets.chomp
	end


	def player_move
		board_square = get_player_move
		if @board[board_square] != " "
			player_move
		else
			@board[board_square] = @player_symbol
		end
		@current_player = :computer
	end

	def computer_won?
		@computer_won
	end

	def player_won?
		@player_won
	end

	def spots_open?
		@board.has_value?(' ')
	end

	def over?
		if (@board["a1"]==@board["a2"] && @board["a2"]==@board["a3"] && @board["a1"]==:X ) || (@board["b1"]==@board["b2"] && @board["b2"]==@board["b3"] && @board["b1"]==:X ) || (@board["c1"]==@board["c2"] && @board["c2"]==@board["c3"] && @board["c1"]==:X ) || (@board["a1"]==@board["b1"] && @board["b1"]==@board["c1"] && @board["a1"]==:X ) || (@board["a2"]==@board["b2"] && @board["a2"]==@board["c2"] && @board["a2"]==:X ) || (@board["a3"]==@board["b3"] && @board["a3"]==@board["c3"] && @board["a3"]==:X ) || (@board["a1"]==@board["b2"] && @board["a1"]==@board["c3"] && @board["a1"]==:X ) || (@board["a3"]==@board["b2"] && @board["a3"]==@board["c1"] && @board["a3"]==:X )
			if @player_symbol == :X
			  @player_won = true
			elsif @computer_symbol == :X
			  @computer_won = true
			end
			@over = true
			elsif (@board["a1"]==@board["a2"] && @board["a2"]==@board["a3"] && @board["a1"]==:O ) || (@board["b1"]==@board["b2"] && @board["b2"]==@board["b3"] && @board["b1"]==:O ) || (@board["c1"]==@board["c2"] && @board["c2"]==@board["c3"] && @board["c1"]==:O ) || (@board["a1"]==@board["b1"] && @board["b1"]==@board["c1"] && @board["a1"]==:O ) || (@board["a2"]==@board["b2"] && @board["a2"]==@board["c2"] && @board["a2"]==:O ) || (@board["a3"]==@board["b3"] && @board["a3"]==@board["c3"] && @board["a3"]==:O ) || (@board["a1"]==@board["b2"] && @board["a1"]==@board["c3"] && @board["a1"]==:O ) || (@board["a3"]==@board["b2"] && @board["a3"]==@board["c1"] && @board["a3"]==:O )
			if @player_symbol == :O
			  @player_won = true
			elsif @computer_symbol == :O
			  @computer_won = true
			end
			@over = true
			elsif @board.empty?
			@draw = true
			@over = true
		end
		@over
	end

	def draw?
	draw = false
		if over? && player_won? == false && computer_won? == false
		draw = true
		end
	draw
	end

	def current_state
		<<-board
		"#{@board["a1"]}""#{@board["a2"]}""#{@board["a3"]}"
		"#{@board["b1"]}""#{@board["b2"]}""#{@board["b3"]}"
		"#{@board["c1"]}""#{@board["c2"]}""#{@board["c3"]}"
		board
	end

	def determine_winner
		over?
	end
end