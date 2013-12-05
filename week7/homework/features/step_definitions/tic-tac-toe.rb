class TicTacToe

  include Enumerable

  SYMBOLS = [:X, :O]

  attr_accessor :player, :computer, :board

  def initialize player = "", symbol = ""
    @player = player
    puts "player is a: #{@player.class}"
    puts "nit player: #{@player}"
    @symbol = symbol
    puts "symbol is a: #{@symbol.class}"
    puts "nit symbol: #{@symbol}"

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
    @over = false
    cm_key = ""
    @draw = false
    @player_won = false
    @spots_are_open = true
  end

  def welcome_player
    puts "the player is: #{@player}"
    @@player_new = true
#    @@contestants = { :player => @player, :computer => "Computer"}
# The following is the problem.  @player is "player" or "computer"
#    if @player 
    @@contestants = { "player" => @player, "computer" => "Computer"}
    @@the_players = [@player, "Computer"]
#    puts "the_players: #{@@the_players}"
 #   puts "contestants: #{@@contestants}"
    return "Welcome #{@player}"
  end

  def current_player
    puts "new contestants: #{@@contestants}"
    puts "in current player"
    if @@player_new && @player != ""
      puts "inside if"
      new_player_sym = @@contestants.keys.sample
      puts "#{new_player_sym.class}"
      @@player_new = false
      a_new = @@contestants[new_player_sym]
      puts "#{a_new}"
      puts "Test #{a_new}\'s Move:"
      return a_new
    else
      puts "in else"
      if @player.is_a? Symbol
        testit = @player.to_s
        player_name = @@contestants[testit]
#        puts "player_name: #{player_name}"
#        puts "#{@@contestants[@player]}\'s Move:"
#        puts "#{player_name}\'s Move:"
        return player_name
      else
        puts "#{@player}"
      return @player

      end
      puts "#{@@contestants[@player]}\'s Move:"
#      return @@contestants[@player]
      return @player
    end
    #original from here down
#    puts "#{@player}\'s Move:"
    
#    puts "#{@@contestants[new_player_key]}\'s Move:"
 #   puts "Test #{@@contestants[@player]}\'s Move:"
 #   return @@contestants[@player]
 #   return @player
  end

  def indicate_palyer_turn
 #   puts "in indicate_palyer_turn"
 #   puts "the_players: #{the_players}"
    if f = @@the_players.enum_for(:each_index).find { |i| @@the_players[i] =~ /@player/i}
      @@the_players.unshift @@the_players.delete_at(f)
#      puts "the new array: #{@the_players}"
      next_player = @the_players.last
    end

    return "#{next_player}\'s Move:"
  end

  def player_symbol
    puts "inside player_symbol"
    if @symbol == ""
      @a = SYMBOLS.sample
      if @a.is_a? Symbol
        @a = @a.to_sym
        puts "a: #{@a}"
      else
        puts "a in else: #{@a}"
      end
#      puts "returned: #{@a}"
      return @a
    else
      puts "the symbol: \"#{@symbol}\""
      return @symbol
    end
  end

  def computer_symbol
    puts "inside computer_symbol"
    @b = SYMBOLS.reject{ |symbols| symbols == @a}.first
    if @b.is_a? Symbol
      @b = @b.to_sym
      puts "b: #{@b}"
    else
      puts "b in else: #{@b}"
    end

#    puts "returned: #{@b}"
    return @b
  end

  def over?
    return @over
  end

  def get_player_move
    puts "#{@player}\'s Move:"
    @the_move = gets.chomp
    return @the_move
  end

  def player_move
    puts "the move: #{@the_move}"
    @board[@the_move] = @player_symbol
    return @the_move
  end

  def computer_move
#    puts "computer symbol: #{@b}"
    cm_open = self.open_spots
    cm_ramdom = cm_open.sample
    @board[cm_ramdom.to_sym] = @b
#    puts "computer chose: #{cm_ramdom}"
    return cm_ramdom
  end

  def current_state
    puts "     A   B   C\n"
    puts " 1   #{@board[:A1]} | #{@board[:B1]} | #{@board[:C1]} "
    puts "    --- --- ---"
    puts " 2   #{@board[:A2]} | #{@board[:B2]} | #{@board[:C2]} "
    puts "    --- --- ---"
    puts " 3   #{@board[:A3]} | #{@board[:B3]} | #{@board[:C3]} "
    return @board.values.to_s
  end

  def determine_winner
#    puts "#{@board}"
#    puts "in determine_winner"
#    puts "current player: #{@player}"
#    puts "current symbol: #{@symbol}"
#    puts "player_won: #{@player_won}"
    get_moves_array = @board.select{|k, v| v == @symbol}.keys
#    puts "get_moves_array: #{get_moves_array}"
#    puts "winning_moves: #{@winning_moves}"
    if @winning_moves.include? get_moves_array
      puts "#{@player} won"
      @player_won = true
      @over = true
    end
  end

  def spots_open?
    spots_hash = @board.reject{|k, v| v != " "}
    if spots_hash.length == 0
      @spots_are_open = false
      @draw = true
#      puts "spots_are_open: #{@spots_are_open}"
    end
    return @spots_are_open
  end

  def draw?
    @draw
    @over = true
  end

  def player_won?
    @player_won
  end


  def open_spots
    spots_hash = @board.reject{|k, v| v != " "}
    if spots_hash.length == 0
      @spots_are_open = false
#      puts "no spaces left"
      @draw = true
    else
      spots_array = spots_hash.keys   # array containing open positions
      return spots_array
    end
#    if spots_array.lenth == 0
#      @spots_open = false
#    end
#    open_array = Array.new
#    all_key_array = @board.keys
#    puts "all_key_array: #{all_key_array}"
#    all_key_array.each{|i| @board[i]}
    # This isn't finished yet
  end

end
