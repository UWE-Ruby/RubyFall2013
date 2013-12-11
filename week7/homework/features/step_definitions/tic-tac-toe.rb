class TicTacToe
  attr_accessor :board, :player, :player_symbol, :computer_symbol

  @WINNING_COMBOS=[[:A1, :A2, :A3], [:B1, :B2, :B3], [:C1, :C2, :C3], [:A1, :B1, :C1], [:A2, :B2, :C2], [:A3, :B3, :C3], [:A1, :B2, :C3], [:A3, :B2, :C1]]

  def initialize (player=[:player, :computer].sample, symbol=[:X,:O].sample)
    @player = ''
    @board = {
        :A1 => :' ', :A2 => :' ', :A3 => :' ',
        :B1 => :' ', :B2 => :' ', :B3 => :' ',
        :C1 => :' ', :C2 => :' ', :C3 => :' '
    }
    @winner = nil
    @next_turn = player
    if symbol == :X
      other_symbol=:O
    else
      other symbol = :X
    end
    if player == :player
      @player_symbol = symbol
      @computer_symbol = other_symbol
    else
      @player_symbol = other_symbol
      @computer_symbol = symbol
    end
  end

  def current_player
    if @next_turn == :computer
      return 'Computer'
    else
      @player
    end
  end

  def welcome_player
    puts "Welcome #{@player}"
  end

  def indicate_palyer_turn
    puts "#{@player}'s Move:"
  end

  def open_spots
    @board.select {|k,v| v==:' '}.keys
  end

  def spots_open?
    if self.open_spots.length > 0
      true
    else
      false
    end
  end

  def get_player_move
    player_move = gets.chomp
    until self.open_spots.include?(player_move)
      puts "That spot is taken."
      self.indicate_palyer_turn
      player_move=gets.chomp
    end
    @board[player_move => @player_symbol]
    @next_turn = :computer
  end

  def computer_move
    @board[self.open_spots.sample => @computer_symbol]
    @next_turn = :player
  end

  def determine_winner
    @winner = :player if board.select {|k,v| v==@player_symbol}.keys.permutation(3).any? {|combo| @WINNING_COMBOS.include?(combo)}
    @winner = :computer if board.select {|k,v| v==@player_symbol}.keys.permutation(3).any? {|combo| @WINNING_COMBOS.include?(combo)}
  end

  def player_won?
    if @winner == :player
      true
    else false
    end
  end

  def computer_won?
    if @winner == :computer
      true
    else false
    end
  end

  def over?
    if self.spots_open? == false or @winner
      true
    else
      false
    end
  end

  def draw?
    if @winner.nil? and self.over?
      true
    else
      false
    end
  end

end