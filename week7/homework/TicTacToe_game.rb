class TicTacToe
	SYMBOLS = ["X","O"]

	attr_accessor :player
	attr_reader :welcome_player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	
	def initialize (name = " ", )
		@player = name
	end

	def player
		@player
	end

	def welcome_player

		@welcome_player =  "Welcome #{@player}"
	end

	def current_player
		# If random number is less than .5 then compy if grater than @player
	  t = rand(2)
	  if t > 1 
	  	computer_move
	  else
	  	@player
	  end

	end

	def player_symbol

 		t = rand(4)
	  if t > 2 
	  	player_symbol= "X"
	  else
	  	player_symbol= "O"
	  end
	  player_symbol
	end

	def computer_symbol
		t = rand(6)
	  if t > 3
	  	computer_symbol= "X"
	  else
	  	computer_symbol= "O"
	  end
	  computer_symbol

	end

	def get_player_move

		
	end

	def board

		
		
	end

	def indicate_player_turn
	end

	def computer_move
	end


end
