class TicTacToe

	attr_accessor :board
	attr_accessor :player_symbol
	attr_accessor :player_move


	SYMBOLS = :X, :O

	def initialize(first_player=nil, player_symbol=nil)
		@player_symbol = player_symbol
		@first_player = first_player
		@board = {
		 "a1"=>" ","a2"=>" ","a3"=>" ",
		 "b1"=>" ","b2"=>" ","b3"=>" ",
		 "c1"=>" ","c2"=>" ","c3"=>" "
		}
	end

	def player=(name)
		@name = name
	end

	def welcome_player
		"Welcome #{@name}"
	end

	def current_player 
		if @name.nil?
			@user = "Computer"
		else
			@user = @name
		end
	end

	def player
		@name
	end

	def player_symbol
		@player_symbol = :X
	end

	def computer_symbol
		if @first_player = "Computer" && @player_symbol = :X
			@computer_symbol = :X
		else
			@computer_symbol = :O
		end
	end

	def indicate_palyer_turn
		puts "#{@name}'s Move:"
	end

	def computer_move
	  @move = open_spots.sample
	  @board[@move] = computer_symbol.to_s
	  @move
	end

	def current_state
		@board.values
	end

	def open_spots
		@board.each { |k, v| v.nil? }
		@board.keys
	end

	def get_player_move
		@player_move
	end

	def player_move(board_space = nil)
    	if board_space.nil?
    		@move = gets.chomp
    	else
    		@move = board_space
    	end
    	@board[@move] = player_symbol.to_s
    	@move
	end

	def invalid_move
		player_move
	end

	def player_won?
		winning_columns
		game_over = nil
		@winning_columns.each do |column|
			if times_in_column(column, @user) == 3
				game_over = true
			end
		end
	end

	def times_in_column array, item
  		times = 0
  		array.each do |i|
    		times += 1 if @board[i] == item
			unless @board[i] == item || @board[i] == " "
			return 0
			end
		end
		times
	end

	def winning_columns
		@winning_columns = [
			['a1','a2','a3'],
			['b1','b2','b3'],
			['c1','c2','c3'],
			['a1','b1','c1'],
			['a2','b2','c2'],
			['a3','b3','c3'],
			['a1','b2','c3'],
			['c1','b2','a3']
		]
	end


	def spots_open?
	end

	def over?
		true
	end

	def draw?
		true
	end

	def determine_winner
	end
end