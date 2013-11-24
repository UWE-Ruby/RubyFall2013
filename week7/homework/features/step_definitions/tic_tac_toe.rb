class TicTacToe

  attr_accessor :player, :player_symbol, 
    :computer_symbol, :game_starter, :board, :play_order, :symbol_order
  
  SYMBOLS = [:X, :O]

  def initialize(starter=:computer, player_mark=:X)

    @play_order = [:computer, :player]
    @play_order.rotate! if starter == :player
    
    symbol_order = [:X, :O]
    symbol_order.rotate! if player_mark == :O

    @player_symbol, @computer_symbol = symbol_order

    puts "Player Symbol: #{@player_symbol}"
    puts "Comp Symbol: #{@computer_symbol}"


    @players = [:computer, :player]
    @players.rotate! if starter == :player

    @board = {
      A1: nil, A2: nil, A3: nil,
      B1: nil, B2: nil, B3: nil,
      C1: nil, C2: nil, C3: nil
    }

  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    player_name @players.first
  end

  def player_name input
    return "Computer" if input == :computer
    @player
  end


  # REFACTOR THESE > JUST FIXING MISSPELLING
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  # ALIAS FIXED MISSPELLING
  def indicate_palyer_turn
    indicate_player_turn
  end

  def get_player_move
    move = gets.chomp
  end

  def open_spots
    spots = []
    @board.each{ |k,v| spots << v if v == nil }
    spots
  end

  def computer_move
    c_move = open_spots.sample
    @board[c_move] = @computer_symbol.to_s
  end

end
