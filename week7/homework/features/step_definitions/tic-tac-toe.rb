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
		winning_columns
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
		check_game
	end

	def player_won?
		check_game
	end

  
	def check_game
	game_over = nil
	@winning_columns.each do |column|
		if times_in_column(column, @computer) == 3
			@computer_won = true
		end
		if times_in_column(column, @player) == 3
			@player_won = true
		end
	end
	end

	def times_in_column arr, item
	times = 0
	arr.each do |i| 
	times += 1 if @board[i] == item
		unless @board[i] == item || @board[i] == " "
			return 0
			end
		end
	times
	end

	def winning_columns
	@winning_columns = [
		[:a1,:a2,:a3],
		[:b1,:b2,:b3],
		[:c1,:c2,:c3],

		[:a1,:b1,:c1],
		[:a2,:b2,:c2],
		[:a3,:b3,:c3],

		[:a1,:b2,:c3],
		[:c1,:b2,:a3]
	]
	end


	def spots_open?
		@board.has_value?(' ')
	end

	def over?
		if @player_won == true
			return true
		elsif @computer_won == true
			return true
		end
	end

	def draw?
	draw = false
		if over? && player_won? == false && computer_won? == false
		draw = true
		end
	draw
	end

	def current_state
		"#{@board}"
	end

	def determine_winner
	end
end