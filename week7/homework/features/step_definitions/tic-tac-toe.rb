class TicTacToe
	SYMBOLS = [:X,:O]
	attr_accessor :player, :board

	def initialize(current_player=nil,player_sym=nil)
		setup_board
		@current_player = current_player || [:computer, :player].sample
		choose_player_symbol(player_sym)
	end

	def computer_symbol
		@player_symbol[:computer]
	end

	def player_symbol
		@player_symbol[:player]
	end

	def current_player
		{:computer => "Computer", 
		  :player => @player}[@current_player]
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def indicate_palyer_turn
		puts "#{@player}'s Move:"
	end

	def get_player_move
		gets.chomp
	end

	def player_move
		move = get_player_move.to_sym
		until open_spots.include?(move)
			move = get_player_move.to_sym
		end
		@board[move] = player_symbol
		@current_player = :computer
		move
	end

	def computer_move
		move = get_computer_move
		@board[move] = computer_symbol
		@current_player = :player
		move
	end

	def get_computer_move
		@board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}.sample
	end

	def current_state
		row1 = "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
		row2 = "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
		row3 = "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
		row1 + "-"*row1.size+"\n"+
		row2 + "-"*row2.size+"\n"+
		row3 + "-"*row3.size+"\n"+
		"******"
	end

	def determine_winner
		p_spots = @board.select{|k,v| v==player_symbol}
		c_spots = @board.select{|k,v| v==computer_symbol}

		player_spots = p_spots.map{|k,v| {k[0].to_sym => k[1].to_i} }
		computer_spots = c_spots.map{|k,v| {k[0].to_sym => k[1].to_i} }
		@player_win = false
		@computer_win = false
		[:A, :B, :C].each do |l|
			return if @player_win = player_spots.map{|i| i[l]}.reject{|f| f.nil?}.sort == [1,2,3]
			return if @computer_win = computer_spots.map{|i| i[l]}.reject{|f| f.nil?}.sort == [1,2,3]
		end

		[1,2,3].each do |l|
			return if @player_win = player_spots.map{|i| i.invert[l]}.reject{|f| f.nil?}.sort == [:A,:B,:C]
			return if @computer_win = computer_spots.map{|i| i.invert[l]}.reject{|f| f.nil?}.sort == [:A,:B,:C]
		end

		return if @player_win = p_spots.keys.sort.reject{|r| ![:A1,:B2,:C3].include? r} == [:A1,:B2,:C3]
		return if @player_win = p_spots.keys.sort.reject{|r| ![:A3,:B2,:C1].include? r} == [:A3,:B2,:C1]
		return if @computer_win = c_spots.keys.sort.reject{|r| ![:A1,:B2,:C3].include? r} == [:A1,:B2,:C3]
		return if @computer_win = c_spots.keys.sort.reject{|r| ![:A3,:B2,:C1].include? r} == [:A3,:B2,:C1]
	end

	def player_won?
		!!@player_win
	end

	def computer_won?
		!!@computer_win
	end

	def draw?
		!player_won? && !computer_won?
	end

	def over?
		player_won? || computer_won? || !spots_open?
	end

	def spots_open?
		!open_spots.empty?
	end

	def open_spots
		@board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}
	end

private
	def setup_board
		@board = {:A1 => ' ', :A2 => ' ', :A3 => ' ',
		  :B1 => ' ', :B2 => ' ', :B3 => ' ',
		  :C1 => ' ', :C2 => ' ', :C3 => ' '}
	end

	def choose_player_symbol(player_sym=nil)
		player_sym ||= SYMBOLS.sample
		@player_symbol = {
			:computer => SYMBOLS.reject{|s| s==player_sym}.first,
			:player => player_sym 
		}
	end
end
