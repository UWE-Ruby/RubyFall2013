class TicTacToe
	SYMBOLS = [:X,:O]
	attr_accessor :player
	attr_accessor :player_on_deck
	attr_accessor :current_player
  attr_accessor :location
	attr_reader :welcome_player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	attr_accessor :board
	attr_reader :first
  attr_accessor :board_locations
  attr_accessor :board

	def initialize (name = " ",symbol = :X )
    @winning_patterns = [

        [:A1,:A2,:A3],
        [:B1,:B2,:B3],
        [:A1,:C2,:C3],
        [:A1,:B1,:C1],
        [:A2,:B2,:C2],
        [:A3,:B3,:C3],
        [:A1,:B2,:C3],
        [:A3,:B2,:C1]

    ]



    @board_locations = {:A1 =>" ", :A2 =>" ", :A3 =>" ",
                       :B1 =>" ", :B2 =>" ", :B3 =>" ",
                       :C1 =>" ", :C2 =>" ", :C3 =>" "}
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

	  case @move_counter
	  when @move_counter == 0
	    @player_on_deck = rand() > 0.5 ? "Computer" : @player
	  else
	    @player_on_deck = @player
	  end

    player_on_deck == @player ? symbol = @player_symbol : symbol = @computer_symbol

    @move_counter += 1
   @player_on_deck
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
  	@location = gets.chomp.to_sym

	end

	def board
      @board_locations
	end

	def spots_open?
    @board_locations.has_value?(" ")

	end

	def computer_move
	end

	def player_move
    available =   @board_locations[get_player_move.to_sym]

   if available == " "

  a= get_player_move.to_sym

   else
     puts " Sorry this position has been taken. Select another position."
   a = get_player_move.to_sym

   end

  a

  end

	def current_state
    @board_locations[get_player_move.to_sym] = @player_symbol.to_s
    @board_locations[get_player_move.to_sym]
	end

	def player_won?

    c = @board_locations.select {|key,val| val == @player_symbol.to_s}.keys
    d= @board_locations.select {|key,val| val == @computer_symbol.to_s}.keys
    @winning_patterns.include?(c) ?   determine_winner   :   @winning_patterns.include?(d) ?  determine_winner : current_player





	end

	def over?

	end

	def draw?

	end

	def determine_winner
    if spots_open? == true


    else
      puts "game is a draw #{@player} and Computer both win!"
      winner= "game is a draw #{@player} and Computer both win!"
    end
       winner =  @player_on_deck

  end

end


