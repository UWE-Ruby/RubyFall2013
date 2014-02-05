class TicTacToe

  include Enumerable

  SYMBOLS = [:X, :O]

  attr_accessor :player, :computer, :board, :outside_player

  def initialize player = "", symbol = ""
    @player = player
    @outside_player = false
    @outside_player = true if @player != ""
    @symbol = symbol

    @board = {
      A1:" ",A2:" ",A3:" ",
      B1:" ",B2:" ",B3:" ",
      C1:" ",C2:" ",C3:" "
    }

    @winning_moves = [
      [:A1, :B1, :C1],
      [:A2, :B2, :C2],
      [:A3, :B3, :C3],

      [:A1, :A2, :A3],
      [:B1, :B2, :B3],
      [:C1, :C2, :C3],

      [:A1, :B2, :C3],
      [:A3, :B2, :C1]
    ]
    @@over = false
    @draw = false
    @player_won = false
    @computer_won = false
    @spots_are_open = true
  end

  # Welcome and set opponents symbols
  def welcome_player
    @@player_new = true
    @@contestants = { :player => @player, :computer => "Computer" }
    @@the_players = @@contestants.values
    # newly added
    player_symbol
    computer_symbol
    @the_sybmols = { :player => @a,
                :computer => @b
    }
    puts
    return "Welcome #{@player}"
  end

  # Determine who the current player is
  def current_player
    if @player.is_a? Symbol
      @player = @@contestants[@player]
    end
    if @outside_player == false
      if @@player_new
        new_player = @@contestants.values.sample
        @@player_new = false
        @player = new_player
      else
        next_player = @@the_players.reject{|i| i == @player}.join
        @player = next_player
     end
    else
      return @player
    end
  end

  # Notify it is the player's turn
  def indicate_palyer_turn
    return "#{@player}\'s Move:"
  end

  # Set player symbol
  def player_symbol
    if @symbol == ""
      @a = SYMBOLS.sample
      if @a.is_a? Symbol
        @a = @a.to_sym
      end
      return @a
    else
      puts "the symbol: \"#{@symbol}\""
      return @symbol
    end
  end

  # Set computer symbol
  def computer_symbol
    @b = SYMBOLS.reject{ |symbols| symbols == @a}.first
    if @b.is_a? Symbol
      @b = @b.to_sym
    end
    return @b
  end

  def over?
    return @@over
  end

  # Get players input
  def get_player_move
    printf "\n#{@player}\'s Move:"
    @the_move = gets.chomp.to_sym
    check_move
    return @the_move
  end

  # Player makes a move
  def player_move
    get_player_move
    @board[@the_move] = @a
    return @the_move
  end

  # Computer makes a move
  def computer_move
    cm_open = self.open_spots
    cm_ramdom = cm_open.sample
    @board[cm_ramdom.to_sym] = @b
    printf "\nComputer chose: #{cm_ramdom}\n\n"
    return cm_ramdom
  end

  # See if the position is already taken
  def check_move
    if @board[@the_move] != " "
      puts "Position already taken, choose another"
      get_player_move
    end
  end

  # Draw the board
  def current_state
    puts "     A   B   C\n"
    puts " 1   #{@board[:A1]} | #{@board[:B1]} | #{@board[:C1]} "
    puts "    --- --- ---"
    puts " 2   #{@board[:A2]} | #{@board[:B2]} | #{@board[:C2]} "
    puts "    --- --- ---"
    puts " 3   #{@board[:A3]} | #{@board[:B3]} | #{@board[:C3]} \n"
  end

  # Determine who the winner is
  def determine_winner
    if @player == "Computer" || @player == :computer
      sym_to_check = @b
    else
      sym_to_check = @a
    end
    get_moves_array = @board.select{|k, v| v == sym_to_check}.keys

    count_winning_sets = 0
    count_my_moves = 0
    count_success = 0
    a_winner = false

    while count_winning_sets < @winning_moves.length
      while count_my_moves < get_moves_array.length
        if @winning_moves[count_winning_sets].include? get_moves_array[count_my_moves]
          count_success += 1
        end
        if count_success == 3
          a_winner = true
          count_my_moves = get_moves_array.length
          count_winning_sets = @winning_moves.length
        end
        count_my_moves += 1
      end
      count_success = 0
      count_winning_sets += 1
      count_my_moves = 0
    end

    # Set the winner
    if a_winner == true
      if @player == "Computer" || @player == :computer
        @computer_won = true
      else
        @player_won = true
      end
      @@over = true
    end
    check_open = spots_open?
  end

  # Check for open spots
  def spots_open?
    spots_hash = @board.reject{|k, v| v != " "}
    if spots_hash.length == 0
      @spots_are_open = false
      @draw = true
      @@over = true
    end
    return @spots_are_open
  end

  # Neither won
  def draw?
    @draw
  end

  # Player won
  def player_won?
    @player
  end

  # Computer won
  def computer_won?
    @player
  end

  # Determine where the open spots are
  def open_spots
    spots_hash = @board.reject{|k, v| v != " "}
    if spots_hash.length == 0
      @spots_are_open = false
      @draw = true
      @@over = true
    else
      spots_array = spots_hash.keys
      return spots_array
    end
  end
end
