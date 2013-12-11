class TicTacToe
  attr_reader :players, :current_player, :player_symbol, :computer_symbol, :move, :first, :status
  attr_accessor :player, :the_matrix

  SYMBOLS = [:X, :O]

  def initialize first_player = :random, first_player_symbol = :random
    @setup = {
      :first_player => first_player,
      :first_player_symbol => first_player_symbol
    }
    @players = ["Computer"]
    @move = Struct.new(:row, :col)
    @status = 1
    reload_matrix
    set_current_player
    set_symbols
  end

  def player= name
    @player = name
    @players << @player
    welcome_player
    set_current_player
    set_symbols
  end

  def welcome_player
    p "Welcome #{@player}"
  end

  def set_current_player
    if(@setup[:first_player] == :player)
      @current_player = @player
    elsif (@setup[:first_player] == :computer)
      @current_player = "Computer"
    else
      @current_player = @players.sample
    end
  end

  def set_symbols
    if(@setup[:first_player_symbol] == :X)
      if(@current_player == @player)
        @player_symbol = :X
        @computer_symbol = :O
      else
        @computer_symbol = :X
        @player_symbol = :O
      end
    elsif (@setup[:first_player_symbol] == :O)
      if(@current_player == @player)
        @player_symbol = :O
        @computer_symbol = :X
      else
        @computer_symbol = :O
        @player_symbol = :X
      end
    else
      player_symbol_key = [0,1].sample
      computer_symbol_key = player_symbol_key == 1 ? 0 : 1
      @player_symbol = SYMBOLS[player_symbol_key]
      @computer_symbol = SYMBOLS[computer_symbol_key]
    end
  end

  def start_game
    # get a new matrix
    reload_matrix
    # if it's the user's turn, prompt them to go
    if(@current_player == @player)
      player_move
    else # otherwise make the computer go
      computer_move
    end
  end

  def next_turn
    # check if we have winner
    if(determine_winner)
      end_game
    else
      # change the current player and make them go
      p 'fuck next turn'
      p @current_player
      if(@current_player == @player)
        @current_player = "Computer"
        # prompt user to make a move
        indicate_palyer_turn
        computer_move
      else
        @current_player = @player
        # prompt user to make a move
        indicate_palyer_turn
        player_move
      end
    end
  end

  def player_move input = gets
    # implement the selection in the matrix
    if(input == nil)
      return
    end
    # split the string to get the coords
    args = input.scan(/./)
    move = @move.new(args[0], args[1].to_i)
    # update the matrix
    if(!update_matrix(move))
      puts "Invalid move, please try again:"
      # player_move
    else
      # trigger next turn
      next_turn
      "#{move[:row]}#{move[:col]}"
    end
  end

  def computer_move
    # randomly choose selection
    # maybe add some logic to actually try to win
    # randomly choose 3 times, then pick the best one?
    # implement the selection in the matrix
    move = @move.new([*'A'..'C'].sample, [*1..3].sample)

    if(!update_matrix(move))
      move = computer_move
    else
      # trigger next turn
      # next_turn
    end
    "#{move[:row]}#{move[:col]}"
  end

  def determine_winner
    if(
      ((@the_matrix["A"][0] == @the_matrix["A"][1] && @the_matrix["A"][1] == @the_matrix["A"][2]) && @the_matrix["A"][0] != nil) ||
      ((@the_matrix["B"][0] == @the_matrix["B"][1] && @the_matrix["B"][1] == @the_matrix["B"][2]) && @the_matrix["B"][0] != nil) ||
      ((@the_matrix["C"][0] == @the_matrix["C"][1] && @the_matrix["C"][1] == @the_matrix["C"][2]) && @the_matrix["C"][0] != nil) ||
      ((@the_matrix["A"][0] == @the_matrix["B"][0] && @the_matrix["B"][0] == @the_matrix["C"][0]) && @the_matrix["A"][0] != nil) ||
      ((@the_matrix["A"][1] == @the_matrix["B"][1] && @the_matrix["B"][1] == @the_matrix["C"][1]) && @the_matrix["A"][1] != nil) ||
      ((@the_matrix["A"][0] == @the_matrix["B"][1] && @the_matrix["B"][1] == @the_matrix["C"][2]) && @the_matrix["A"][0] != nil) ||
      ((@the_matrix["C"][0] == @the_matrix["B"][1] && @the_matrix["B"][1] == @the_matrix["A"][2]) && @the_matrix["C"][0] != nil))
      end_game
      return true
    else
      return false
    end

  end

  def player_won?
    if(determine_winner && @current_player == @player)
      true
    else
      false
    end
  end

  def draw?
    p determine_winner
    if(!spots_open? && !determine_winner)
      end_game
      true
    else
      false
    end
  end

  def end_game
    @status = 0
  end

  def over?
    @status == 0
  end

  def indicate_palyer_turn
    # prompt user for a selection
    puts "#{@current_player}'s Move:"
  end

  def open_spots
    open_spots = []
    @the_matrix.each do |row, cols|
      cols.each_with_index do |value, col|
        if(value == nil)
          open_spots << "#{row}#{col + 1}"
        end
      end
    end
    open_spots
  end

  def spots_open?
    open_spots.length > 0
  end

  def current_state
    state = ""
    first_row = true
    @the_matrix.each do |row, cols|
      unless(first_row == true)
        state += "\n-----------\n"
      end
      first_row = false
      cols.each_with_index do |value, col|
        unless(col == 0)
          state += "|"
        end
        state += value == nil ? "\s\s\s" : "\s#{value.to_s}\s"
      end
    end
    puts state
    state
  end

private
  def reload_matrix
    @the_matrix = {
      'A' => [nil,nil,nil],
      'B' => [nil,nil,nil],
      'C' => [nil,nil,nil]
    }
  end

private
  def update_matrix move
    unless(move != nil && @the_matrix[move.row] && @the_matrix[move.row][(move.col - 1)] == nil)
      return false
    else
      @the_matrix[move.row][move.col - 1] = current_symbol
      return true
    end
  end

private
  def current_symbol
    # if the player is playing, use their symbol
    if(@current_player == @player)
      @player_symbol
    else # otherwise use the computer's
      @computer_symbol
    end
  end

end