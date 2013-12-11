class TicTacToe
	
	#require Random

	attr_accessor :player, :computer, :player_symbol, :computer_symbol

	SYMBOLS = ["X", "O"]

	def initialize current_player_name = "", current_player_symbol = :O
		puts current_player_name
		puts current_player_symbol

		if current_player_name == :computer
			@computer_symbol = current_player_symbol
				if @computer_symbol == :X
					@player_symbol = :O
				else
					@player_symbol = :X
				end
		else
			@player_symbol = current_player_symbol
			if @player_symbol == :X
				@computer_symbol = :O
			else
				@computer_symbol = :X
			end
		end
		
		if current_player_name == :player
		@player = "Renee"	
	
		else
		@player = current_player_name.to_s.capitalize

		end

		@current_player = @player

		
		@computer = "Computer"
		# @player_symbol = player_symbol.to_s.capitalize
		# @computer_symbol = computer_symbol.to_s.capitalize
	end


	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		@current_player

	end

	def indicate_player_turn
		puts "#{current_player}'s Move:"
	end

	def get_player_move
		gets
	end

end