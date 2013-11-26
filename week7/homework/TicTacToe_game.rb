class TicTacToe
	
	attr_accessor :player
	attr_reader :welcome_player
	
	def initialize 
		@player = gets.chomp

	end

	def welcome_player
		puts "Welcome #{@player}"
	end



end
