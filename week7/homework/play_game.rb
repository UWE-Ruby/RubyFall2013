
#require './features/step_definitions/tic-tac-toe_steps.rb'

class TicTacToe
  # attr_accessor :current_state
  attr_accessor :player
  attr_accessor :player_symbol
  attr_accessor :board
  attr_accessor :get_player_move
  attr_accessor :resolution

  SYMBOLS = [:X, :O]

  def initialize(turn = nil, player_symbol = nil)
    @player_symbol = player_symbol
    @board = Hash.new
    initial_state.each {|b| @board[b] = nil }
    if turn == :player
      @player = "Renee"
      @current_player = @player
    elsif turn == :computer
      @player = "Renee"
      @current_player = "Computer"
    end
    if player_symbol == :X
      @player_symbol = :X
    elsif player_symbol == :O
      @player_symbol = :O
    end
  end

  # def get_player_move
  #   @get_player_move
  # end


  def welcome_player
    puts "Enter your name:"
    @player = "Renee"
    "Welcome #{@player}"
  end

  def current_player
    return @current_player if @current_player
    @current_player = [player, "Computer"][rand(2)]
    if @current_player == "Computer"
      @player_symbol = :O
    else
      @player_symbol = :X
    end
    @current_player
  end

  def current_state
    @board.values
    #@state ||= ('A'..'C').map {|a| (1..3).map {|b| "#{a}#{b}" }}.flatten
  end

  def initial_state
    ('A'..'C').map {|a| (1..3).map { |b| 
      plot = "#{a}#{b}"
      @board[plot] ? "#{plot}#{(@board[plot].to_s)}" : plot
    }}.flatten
  end


  def open_spots
    #current_state.delete_if {|a| a == 'X' || a == 'O'}
    empty_spots = @board.select {|k,v| v.nil? }
    empty_spots.keys
  end

  def spots_open?
    !open_spots.empty?
  end

  def computer_move
    @move = open_spots.sample
    @board[@move] = computer_symbol.to_s
    @move
  end

  def computer_symbol
    case @player_symbol
    when :X
      :O
    when :O
      :X
    else
      nil
    end
  end


  def player_move(space = nil)
    if space
      @move = space
    else
      @move ||= STDIN.gets.chomp
    end
    @board[@move] = player_symbol.to_s
    @move
  end

  def indicate_player_turn
    message = "#{@player}'s Move:"
    puts message
    message
  end

  def determine_winner
    x_analysis, o_analysis = Hash.new(0), Hash.new(0)
    xs, os = @board.select {|k,v| v == 'X' }.keys, @board.select {|k,v| v == 'O' }.keys
    xs.each {|x| x_analysis[x]+=1 }
    os.each {|o| o_analysis[o]+=1 }

    if @board[:C1] == @board[:B2] && @board[:C1] == @board[:A3]
      #@resolution = "player_won"
      puts @board[:C1]
      puts player_symbol
      if @board[:C1] == player_symbol
        @resolution = 'player_won'
      else
        @resolution = 'computer_won'
      end
    elsif @board[:C3] == @board[:B2] && @board[:C3] == @board[:A1]
      if @board[:C3] == player_symbol
        @resolution = 'player_won'
      else
        @resolution = 'computer_won'
      end
    elsif x_analysis.values.include?(3)
      x_wins
    elsif o_analysis.values.include?(3)
      o_wins
    elsif !spots_open?
      @resolution = 'draw'
    end
  end

  def x_wins
    if player_symbol == :X
      @resolution == 'player_won'
    elsif player_symbol == :O
      @resolution == 'computer_won'
    end
  end

  def o_wins
    if player_symbol == :O
      @resolution == 'player_won'
    elsif player_symbol == :X
      @resolution == 'computer_won'
    end
  end

  def player_won?
    @resolution == 'player_won'
  end

  def computer_won?
    @resolution == 'computer_won'
  end

  def draw?
    @resolution == 'draw'
  end

  def over?
    player_won? || computer_won? || draw?
  end
end

def play
  @game = TicTacToe.new
  puts @game.welcome_player

  until @game.over?
  	case @game.current_player
  	when "Computer"
  		@game.computer_move
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
end
