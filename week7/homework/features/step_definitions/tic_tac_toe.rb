class TicTacToe
	attr_accessor :player
	#include @game.player_symbol, @game.computer_symbol
	SYMBOLS = [:X,:O]
	def initialize(player=nil,current_player=nil)
		@player = player
		@current_player = current_player
	end
	def welcome_player player=@player
	   "Welcome #{@player}"
	end
	def current_player  
	  #[@game.player, "Computer"].should include @game.current_player
	   player = @player.to_s.capitalize #["#{@player}","Computer"].sample
	end
	def player_symbol 
	  @player_symbol = :X #SYMBOLS.sample 
  end
  def computer_symbol symbol = @computer_symbol
	  @computer_symbol = SYMBOLS.reject{|p| p==@player_symbol}.first
  end
  def indicate_player_turn
     puts "#{@player}'s Move:"
  end
  def get_player_move
    gets("Move")
  end
  def board
    @board = :a1
  end
	
end