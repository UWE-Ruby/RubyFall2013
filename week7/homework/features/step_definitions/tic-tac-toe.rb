class TicTacToe

	attr_accessor :player,
				  :player_symbol,
				  :computer_symbol,
				  :player_move,
				  :turn,
				  :board,
				  :winning_combo

	SYMBOLS = [:X,:O]
	
	def initialize(com = :computer, player_symbol= :X, player = "")
		@turn = com
		@player_symbol = player_symbol
		@player = player
		@board = Hash.new("")
	end

	# define 9 spots on board
	def board 
		@board = {
		  "a1"=>'',"a2"=>'',"a3"=>'',
		  "b1"=>'',"b2"=>'',"b3"=>'',
		  "c1"=>'',"c2"=>'',"c3"=>''
		}
	end

	# return welcome message
	def welcome_player
		@welcome_player = "Welcome #{@player}"
	end

	# define X and O
	def computer_symbol
		puts @player_symbol 
		if(@player_symbol == :O)
		  :X
		else
		  :O
		end
  	end

  	# return current player
  	def current_player
		if (@turn == :computer)
			return "Computer"
		else
			@player
		end
	end

  	# print player's move
	def indicate_player_turn
	    puts "#{@player}'s Move:"
	end

	# get player's input
	def get_player_move(player_move = "")
	    player_move.chomp
	end

	# computer chooses random spot
	def computer_move
       	c_move = open_spots.sample
       	@board[c_move] = @computer_symbol.to_s
   		@turn = :player
	end

	# player's turn
	def player_move
		p_move = get_player_move.to_sym
    	# if spot is open player's move, otherwise computer's move
	    if open_spots.include? p_move
	      c_move = p_move
	    else
	      @board[c_move] = @player_symbol.to_s
	      @turn = :computer
	    end  
	    @player_move
	end

	# define open spots
	def open_spots
		@board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}
	end

	# checks open spots
	def spots_open?
		!open_spots.empty?
	end

	# define winning combinations
	def winning_combo symbol
		@winning_combo = [
		  ["a1","a2","a3"],
		  ["b1","b2","b3"],
		  ["c1","c2","c3"],
		  ["a1","b1","c1"],
		  ["a2","b2","c2"],
		  ["a3","b3","c3"],
		  ["a1","b2","c3"],
		  ["c1","b2","a3"]
		]
	end

	# determine winner
	def determine_winner
		@winner = false
		winning_play = winning_combo symbol
		@game_over =  winning_play
		@winner = winning_play
	    if (spots_open? == false and @winner == false)
    	  @game_over = true
 	    end
	end

	# if player wins
	def player_won?
     	@winner == @player_symbol
    end
 
 	#if computer wins
    def computer_won?
     	@winner == @computer_symbol
    end
 
 	#if game is over
    def over?
     	@game_over = true
    end
 
 	#if game is a draw
    def draw?
     	(@game_over == true and @winner == false)
    end

end
