class TicTacToe
	SYMBOLS = [:X,:O]

	attr_accessor :player
	attr_accessor :player_on_deck
	attr_accessor :current_player
	attr_reader :welcome_player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	attr_accessor :board
	attr_reader :first
  attr_accessor :board_locations
	
	def initialize (name = " ",symbol = :X )


    @winning_patterns = [

        [:A1,:A2,:A3],
        [:B1,:B2,:B3],
        [:A1,:C2,:C3],
        [:A1,:B1,:C1],
        [:A2,:B2,:C2],
        [:A3,:B3,:C3],
        [:A1,:B2,:C3],
        [:A3,:B2,:C1],

    ]

	@move_counter = 0


  @player_symbol = symbol

  @player_symbol == :X ? @computer_symbol =:O :  @computer_symbol =:X




  				
	end

	def player
		@player
	end

	def welcome_player
		@welcome_player =  "Welcome #{@player}"
	end

	def indicate_player_turn 
		puts "#{@player}'s Move:"

	end

	def current_player

    #if @move_counter == 0
    #  player_on_deck = rand() > 0.5 ? "Computer" : @player
    #else
    #  player_on_deck == "Computer" ? @player : "Computer"
    #end

	  case @move_counter
	  when @move_counter == 0
	    @player_on_deck = rand() > 0.5 ? "Computer" : @player
	  else
	    @player_on_deck = @player
	  end

    (player_on_deck == @player) ? symbol = @player_symbol : symbol = @computer_symbol

    return @player_on_deck ; symbol
	end

	def get_move
		move = @player ? get_player_move : get_computer_move
	end

	def player_symbol

  @player_symbol

	end

	def computer_symbol

 	@computer_symbol

	end

	def get_player_move
  	location = gets.chomp.to_sym
    #board_locations[location] = player_symbol
  	#computer_move

		
	end

	def board (*args)
     board_locations = {:A1 => " ", :A2 => " ", :A3 => " ",
         :B1 => " ", :B2 => " ", :B3 => " ",
         :C1 => " ", :C2 => " ", :C3 => " ",
     }

     board_locations[get_player_move] = player_symbol
    
    
	#puts "-------------------"
	#puts "#{@player}"	

	#puts "   1| 2 | 3\n"
	puts " A| #{board_locations[:A1]} | #{board_locations[:A2]} | #{board_locations[:A3]} "
	#puts " ------------------"
	puts " B| #{board_locations[:B1]} | #{board_locations[:B2]} | #{board_locations[:B3]} "
	#puts " ----------------------------"
	puts " C| #{board_locations[:C1]} | #{board_locations[:C2]} | #{board_locations[:C3]} "
	#puts " ------------------"
		
	end

	def open_spots
	end

	def computer_move
	end

	def player_move	
	end

	def current_state
	end

	def player_won?
		
	end

	def over?
		
	end

	def draw?
		
	end

	def determine_winner
		
	end

end
