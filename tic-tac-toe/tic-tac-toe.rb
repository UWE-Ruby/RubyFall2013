class TicTacToe
	attr_accessor :player, :welcome_player, :board, :current_player, :computer_symbol, :player_symbol
	
	def initialize
		@board = {a1:nil, a2:nil, a3:nil, b1:nil, b2:nil, b3:nil, c1:nil, c2:nil, c3:nil}
		@gamestate = {current_player => :X, :board => @board, :cpu_side => nil}
		@winning_lines = [
			[:a1, :a2, :a3],
			[:b1, :b2, :b3],
			[:c1, :c2, :c3],
			[:a1, :b1, :c1],
			[:a2, :b2, :c2],
			[:a3, :b3, :c3],
			[:a1, :b2, :c3],
			[:a3, :b2, :c1]
		]
		@computer_won, @player_won, @draw = false, false, false
		@player = ""
		@current_player = nil
		@over = false

	end

	def over?
		@over
	end


	def detect_win board
		result = [false, nil]
		@winning_lines.each do |line|
			if check_line(line, board, :X)
				result = [true, :X]
				break
			elsif	check_line(line, board, :O)
				result = [true, :O]
				break
			end
		end
		result
	end

	def determine_winner
		result = detect_win(@board)
		if result[0]
			winner = result[1]
			@over = true
			if winner == @computer_symbol
				@computer_won = true
			elsif winner == @player_symbol
				@player_won = true
			end
		elsif detect_tie
				@draw = true
				@over = true
		else
			@over = false
		end
	end

	def detect_tie 
		if @board.values.compact.size == 9
			true
		else
			false
		end
	end

	def check_line line, board, entry
		board[line[0]] == entry and board[line[1]] == entry and board[line[2]] == entry
	end

	def welcome_player
		if rand(2) == 0
			@current_player = @player
			@player_symbol = :X
			@computer_symbol = :O
		else
			@current_player = "Computer"
			@player_symbol = :O
			@computer_symbol = :X
		end		
		"Welcome " + @player		
	end

	def computer_won?
		@computer_won
	end

	def player_won?
		@player_won
	end

	def draw?
		@draw
	end

	def computer_move
		move = board.keys.sample
		if not board[move]
			board[move] = @computer_symbol
		else
			computer_move
		end 
#		corners = [@board[:a1], @board[:a3], @board[:c3], @board[:c1]]
#		sides = [@board[:a2], @board[:b1], [@board[:b3], @board[:c2]]
#		if @board[:b2] == nil
#			@board[:b2] = @computer_symbol
#		elsif corners 
		puts "I will take #{move}."
		@current_player = @player
	end

	def player_move
		move = gets.downcase.chomp.to_sym
		if @board.has_key?(move) and @board[move] == nil
			@board[move] = @player_symbol
		else
			puts "Move invalid. Please enter a valid move."
			player_move
		end
		@current_player = "Computer"
	end

	def indicate_player_turn
		puts "Your turn. Make your move."
	end

	def current_state
		puts "----------"
		puts "| " + @board[:a1].to_s + " | " + @board[:a2].to_s + " | " + @board[:a3].to_s + " |"
		puts "----------"
		puts "| " + @board[:b1].to_s + " | " + @board[:b2].to_s + " | " + @board[:b3].to_s + " |"
		puts "----------"
		puts "| " + @board[:c1].to_s + " | " + @board[:c2].to_s + " | " + @board[:c3].to_s + " |"
		puts "----------"
	end

end