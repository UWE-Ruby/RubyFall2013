class TicTacToe
	SYMBOLS = [:X,:O]

	attr_accessor :player
	attr_reader :welcome_player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	
	def initialize (name = " " )
		@player = name
  		game_locations = { 

  				:A1 => " ", :A1 => " ", :A1 => " ",
  				:B1 => " ",  :B2 => " ",  :A1 => " ",
  				:A1 => " ", :A1 => " ", :A1 => " ", 

  				}
  	move_counter = 0
  		
	end

	def player
		@player
	end

	def welcome_player
		@welcome_player =  "Welcome #{@player}"
	end

	def initial_player
	

	current_move= rand() > 0.5 ? computer_move : @player

	end

	def current_player
		
		case move_counter = 0 
		
		when move_counter = 0 
			player_on_deck = rand() > 0.5 ? "Computer" : @player
			move_counter +=1 
		else
			player_on_deck == "Computer" ? @player : "Computer"

		end
       return player_on_deck
	end

	def get_move
		move = @player ? get_player_move : get_computer_move
	end

	def player_symbol

 	player_symbol= rand() > 0.5 ? :X : :O

	end

	def computer_symbol

 	computer_symbol= rand() > 0.5 ? :X : :O

	end

	def get_player_move
  	location = gets.chomp.to_sym
  	game_locations[location] = player_symbol
  	move = computer_move
  	return move
		
	end

	def board

	puts "----------------------------"
	puts "#{@player}"	

	puts "   1| 2 | 3\n"
	puts " A| #{board_locations[:A1]} | #{board_locations[:A2]} | #{board_locations[:A3]} "
	puts " ----------------------------"
	puts " B| #{board_locations[:B1]} | #{board_locations[:B2]} | #{board_locations[:B3]} "
	puts " ----------------------------"
	puts " C| #{board_locations[:C1]} | #{board_locations[:C2]} | #{board_locations[:C3]} "
	puts " ----------------------------"
		
	end

	def indicate_player_turn
	end

	def computer_move
	end


end
