class TicTacToe
  attr_accessor :player
  attr_accessor :current_player
  attr_accessor :board
  attr_accessor :computer_symbol
  attr_accessor :player_symbol
  attr_accessor :A1
  attr_accessor :A2
  attr_accessor :A3
  attr_accessor :B1
  attr_accessor :B2
  attr_accessor :B3
  attr_accessor :C1
  attr_accessor :C2
  attr_accessor :C3
  
  def initialize
    @current_player  = [@player, "Computer"].sample
    @computer_symbol = 'X'
    @player_symbol   = 'O'
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
  
  def indicate_palyer_turn
    "Your turn, #{@player}"
  end
  
  def current_state
    puts '****************'
    puts @board[:A1] + '|' + @board[:A2] + '|' + @board[:A3]
    puts '_____'
    puts @board[:B1] + '|' + @board[:B2] + '|' + @board[:B3]
    puts '_____'
    puts @board[:C1] + '|' + @board[:C2] + '|' + @board[:C3]
    puts '****************'
  end
  
  def player_won?
  end
  
  def computer_won?
  end
  
  def computer_move
    letter = ('A'..'C').to_a.sample
    number = (1..3).to_a.sample
    if (@board[(letter + number.to_s).to_sym] == ' ')
      @board[(letter + number.to_s).to_sym] = @computer_symbol
      @current_player = @player
    else
      computer_move
    end
  end
  
  def player_move
    print "? "
    move = gets.chomp
    if (@board[move.to_sym] == ' ')
      @board[move.to_sym] = @player_symbol
      @current_player = "Computer"
    else
      player_move
    end
  end
  
  def draw?
  end
  
  def welcome_player
    "Welcome, #{@player}! You are playing O's"
  end
  
  def over?
    false
    # if (
    #     # Horizontal Win
    #     (((@A1==@A2) && (@A2==@A3)) ||  ((@B1==@B2) && (@B2==@B3)) ||  ((@C1==@C2) && (@C2==@C3))) || 
    #     # Vertical Win
    #     (((@A1==@B1) && (@B1==@C1)) ||  ((@A2==@B2) && (@B2==@C2)) ||  ((@A3==@B3) && (@B3==@C3))) ||
    #     # Diagonal Win
    #     (((@A1==@B2) && (@B2==@C3)) ||  ((@A3==@B2) && (@B2==@C1)))
    #    ) 
    #   true
    # end
  end
  
  def determine_winner
    false
  end
end