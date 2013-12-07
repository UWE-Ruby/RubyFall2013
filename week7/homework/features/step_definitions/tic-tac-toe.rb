class TicTacToe

	include Enumerable

	SYMBOLS = [:X, :O]

	attr_accessor :player, :computer, :board, :X, :O, :old_pos

	def initialize(player=nil, computer=nil, old_pos=nil, com_move=nil)
		@player = player
		@computer = computer
		@old_pos = old_pos
		@com_move = com_move
		@board = {
      		:A1 => " ", :A2 => " ", :A3 => " ",
      		:B1 => " ", :B2 => " ", :B3 => " ",
      		:C1 => " ", :C2 => " ", :C3 => " "
    	}
	end

	def welcome_player
		puts "The PLAYER in the Welcome method is #{@player}"
		"Welcome #{@player}"
	end

	def current_player
		puts "The current PLAYER is #{@player}"
#		@player = "Renee"
		[@player, "Computer"].sample
#		[@player, @computer].sample
	end

	def player_symbol
		@player = [:X, :O].sample
#		puts "The SYMBOL chosen for player is #{@player}"
	end

	def computer_symbol
		if @player.equal? :X
			@computer = :O
		else
			@computer = :X
		end
	end

	def with
	end

	def indicate_palyer_turn
	end

	def and_return
	end

	def get_player_move
	end

	def board(arg1)

	end

	def open_spots
	end

  def player_move

  end

	def computer_move
	end

	def current_state
	end

  def determine_winner

  end

  def draw?

  end

  def player_won?

  end

end