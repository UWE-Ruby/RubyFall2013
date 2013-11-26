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
    current_state.each {|b| @board[b] = nil }
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
    @state ||= ('A'..'C').map {|a| (1..3).map {|b| "#{a}#{b}" }}.flatten
  end

  def open_spots
    current_state.delete_if {|a| a == 'X' || a == 'O'}
  end

  def spots_open?
    !open_spots.empty?
  end

  def computer_move
    @move = open_spots.sample
    current_state[current_state.index(@move)] = computer_symbol.to_s
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


  def player_move
    @move = STDIN.gets.chomp
    current_state[current_state.index(@move)] = player_symbol.to_s
    @move
  end

  def indicate_player_turn
    "#{@player}'s Move:"
    get_player_move = STDIN.gets.chomp
  end

  def determine_winner
    if @board[:C1] == @board[:B2] && @board[:C1] == @board[:A3]
      @resolution = 'player_won'

    else
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