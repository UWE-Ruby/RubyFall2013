class TicTacToe
  attr_accessor :current_player
  attr_accessor :player_counter
  attr_accessor :board
  attr_accessor :computer_symbol
  attr_accessor :player_symbol
  attr_accessor :winning_symbol
  attr_accessor :winner
  
  SYMBOLS = [:X, :O]
  
  def initialize(first = nil, symbol = nil)
    if (first.nil? || !([:player, :computer].include? first))
      # Decide who goes first randomly
      @current_player  = @player
      # Randomly assign symbols
      @computer_symbol = SYMBOLS.sample
      @player_symbol   = :O if @computer_symbol == :X
      @player_symbol   = :X if @computer_symbol == :O
    else
      @current_player = @player if first == :player
      @current_player = "Computer" if first == :computer
      if (symbol.nil? || !(SYMBOLS.include? symbol))
        # Randomly assign symbols
        @computer_symbol = SYMBOLS.sample
        @player_symbol   = :O if @computer_symbol == :X
        @player_symbol   = :X if @computer_symbol == :O
      else
        @player_symbol = symbol
        @computer_symbol   = :O if @player_symbol == :X
        @computer_symbol   = :X if @player_symbol == :O
      end
    end
  
    # Keep count of the number of plays
    @play_counter    = 0

    @winning_symbol = "No Winner"
    @board = {
      :A1 => ' ',            
      :B1 => ' ',
      :C1 => ' ',
      :A2 => ' ',
      :B2 => ' ',
      :C2 => ' ',
      :A3 => ' ',
      :B3 => ' ',
      :C3 => ' '
    } 
  end
  
  def player=(name)
    @player = name
    @current_player = @player if @current_player != "Computer"
  end
  
  def player
    @player
  end
  
  def open_spots
    open_spots = []
    @board.keys.each do |cell|
      open_spots.push cell if @board[cell] == ' '
    end
    open_spots
  end
  
  def spots_open?
    return true if open_spots.count > 0
    false
  end
  
  def indicate_palyer_turn
    puts "#{@player}'s Move:"
    # current_state if @play_counter == 0
  end
  
  def current_state
    state =  "\n****************\n"
    state += @board[:A1].to_s + '|' + @board[:A2].to_s + '|' + @board[:A3].to_s
    state += "\n_____\n"
    state += @board[:B1].to_s + '|' + @board[:B2].to_s + '|' + @board[:B3].to_s
    state += "\n_____\n"
    state += @board[:C1].to_s + '|' + @board[:C2].to_s + '|' + @board[:C3].to_s
    state += "\n****************\n"
    puts state
    state
  end
  
  def draw?
    false
    true if @winner == 'Draw'
  end
  
  def player_won?
    false
    true if @winner == @player
  end
  
  def computer_won?
    false
    true if @winner == "Computer"
  end
  
  def computer_move
    letter = ('A'..'C').to_a.sample
    number = (1..3).to_a.sample
    if (@board[(letter + number.to_s).to_sym] == ' ')
      @board[(letter + number.to_s).to_sym] = @computer_symbol.to_s
      puts "Computer plays #{letter + number.to_s}!"
      @current_player = @player
      @play_counter += 1
      (letter + number.to_s).to_sym
    else
      computer_move
    end
  end
  
  def player_move(m = nil)
    print "? "
    if m.nil?
      move = gets.chomp 
    else
      move = m
    end
    if (@board[move.to_sym] == ' ')
      @board[move.to_sym] = @player_symbol
      puts "#{@player}'s Move:"
      @current_player = "Computer"
      @play_counter += 1
      @player_move = move
      move.to_sym
    else
      player_move
    end
  end
  
  def move
    if @current_player == player
      player_move
    else
      computer_move
    end
  end
  
  def get_player_move()
    @player_move
  end
  
  def welcome_player
    "Welcome #{@player}"
  end
  
  def horizontal_win?
    ('A'..'C').each do |letter|
      if SYMBOLS.include? @board["#{letter}1".to_sym]
        if ((@board["#{letter}1".to_sym] == @board["#{letter}2".to_sym]) && (@board["#{letter}2".to_sym] == @board["#{letter}3".to_sym]))
          @winning_symbol = @board["#{letter}1".to_sym]
          return true
        end
      end
    end
    false
  end
  
  def vertical_win?
    (1..3).each do |number|
      if SYMBOLS.include? @board["A#{number}".to_sym]
        if ((@board["A#{number}".to_sym] == @board["B#{number}".to_sym]) && (@board["B#{number}".to_sym] == @board["C#{number}".to_sym]))
          @winning_symbol = @board["A#{number}".to_sym]
          return true
        end
      end
    end
    false
  end
  
  def diagonal_win?
    if SYMBOLS.include? @board[:A1]
      if ((@board[:A1] == @board[:B2]) && (@board[:B2] == @board[:C3]))
        @winning_symbol = @board[:A1]
        return true
      end
    end
    
    if SYMBOLS.include? @board[:A3]
      if ((@board[:A3] == @board[:B2]) && (@board[:B2] == @board[:C1]))
        @winning_symbol = @board[:A3]
        return true
      end
    end
  end
  
  def no_plays_left?
    ('A'..'C').each do |letter|
      (1..3).each do |number|
        return false if @board["#{letter}#{number}".to_sym] == ' '
      end
    end
    true
  end
  
  def over?
    false
    return true if horizontal_win?
    return true if vertical_win?
    return true if diagonal_win?
    @winning_symbol = 'Draw' if no_plays_left?
    return true if no_plays_left?
  end
  
  def determine_winner
    if over?
      @winner = @player if @winning_symbol == @player_symbol
      @winner = "Computer" if @winning_symbol == @computer_symbol
      @winner = "Draw" if @winning_symbol == "Draw"
    end
  end
end