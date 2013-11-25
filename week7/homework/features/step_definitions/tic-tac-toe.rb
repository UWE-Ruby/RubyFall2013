class TicTacToe

  attr_accessor :player, :player_symbol, :first_player, :board, :play_order, :player_move, :whose_turn
  
  SYMBOLS = [:X, :O]

  def initialize(starter=:computer, player_symbol=:X)
    @board = Hash.new(' ')
    @player_symbol = player_symbol
    @whose_turn = starter
  end

  # get the opposite player
  def opponent input
    return :computer if input == :player
    return :player if input == :computer
  end

  def computer_symbol
    return :X if @player_symbol == :O
    :O
  end

  def welcome_player
    "Welcome #{@player}"
  end

  # Return string of current player
  # "Computer" or entered name
  def current_player
    return "Computer" if @whose_turn == :computer
    @player
  end








  #//==============================
  # PLAYING
  #//==============================


  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def get_player_move
    gets.chomp
  end

  # Get player entry
  # check for open spots
  def player_move
    pm = get_player_move.to_sym
    
    if spot_taken? pm
      player_move
    else
      @board[pm] = player_symbol
      @whose_turn = :computer
      pm
    end
  end

  # Computer chooses random open spot
  def computer_move
    c_move = open_spots.sample
    @board[c_move] = computer_symbol
    puts "BOARD: #{@board}"
    @whose_turn = :player
  end



  # 
  # ROWS
  # 

  def top_row
    [@board[:A1], @board[:A2], @board[:A3]]
  end

  def mid_row
    [@board[:B1], @board[:B2], @board[:B3]]
  end

  def bot_row
    [@board[:C1], @board[:C2], @board[:C3]]
  end


  # 
  # COLS
  # 

  def left_col
    [@board[:A1], @board[:B1], @board[:C1]]
  end

  def mid_col
    [@board[:A2], @board[:B2], @board[:C2]]
  end

  def right_col
    [@board[:A3], @board[:B3], @board[:C3]]
  end



  # 
  # DIAG
  # 

  def forard_diag
    [@board[:A1], @board[:B2], @board[:C3]]
  end

  def back_diag
    [@board[:A3], @board[:B2], @board[:C1]]
  end





  #
  # BOARD 
  #




  def valid_spaces
    [:A1, :B1, :C1, :A2, :B2, :C2, :A3, :B3, :C3]
  end

  def valid_space? space
    valid_spaces.include?
  end

  # Array of symbols for board keys
  def open_spots
    spots = []
    valid_spaces.each do |space_key|
      board_value = @board[space_key]
      spots << space_key if @board[space_key] == ' '
    end
    spots
  end




  def spots_open?
    !open_spots.empty?
  end



  def spot_taken? input
    sym = input.to_sym
    value = @board[sym]
    value != " "
  end

  def current_state
    tr = top_row.join("")
    mr = mid_row.join("")
    br = bot_row.join("")
    board_string = [tr, mr, br].join("\n")
    board_string
  end


  def has_three_in_row_of_symbol symbol

    return true if top_row.all? { |e| e == symbol }
    return true if mid_row.all? { |e| e == symbol }
    return true if bot_row.all? { |e| e == symbol }

    return true if left_col.all?  { |e| e == symbol }
    return true if mid_col.all?   { |e| e == symbol }
    return true if right_col.all? { |e| e == symbol }

    return true if forard_diag.all? { |e| e == symbol }
    return true if back_diag.all?   { |e| e == symbol }

    false
  end

  def player_won?
    has_three_in_row_of_symbol player_symbol
  end

  def computer_won?
    has_three_in_row_of_symbol computer_symbol
  end

  def draw?
    return false if computer_won?
    return false if player_won?
    return false if spots_open?
    true
  end

  def over?
    puts "OVER"
    puts "Open Spots #{open_spots}"
    return true if computer_won?
    return true if player_won?
    return true if draw?
    false
  end

  def determine_winner
    true
  end


end
