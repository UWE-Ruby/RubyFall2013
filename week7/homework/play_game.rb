require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new
puts "What is your name?"
@game.player = gets.chomp
puts @game.welcome_player
puts "#{@game.player}, who plays 'X', who plays 'O' and who moves first is randomly selected"
puts "The board positions are A1-3, B1-3 and C1-3"
puts " "
puts "You are playing #{@game.player_symbol}"
puts @game.current_state

until @game.over?
	case @game.current_player
	when "Computer"
		@game.computer_move
		puts "My move"
	when @game.player
		@game.indicate_player_turn
		@game.player_move
	end
	puts @game.current_state
	@game.determine_winner
end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
