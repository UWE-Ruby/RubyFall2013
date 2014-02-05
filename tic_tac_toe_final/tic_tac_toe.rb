class TicTacToe

end
  attr_reader

  def initialize
		@squares = {
        "a1"=> " ", "a2" => " ", "a3"=> " ",
        "b1"=> " ", "b2" => " ", "b3"=> " ",
        "c1"=> " ", "c2" => " ", "c3"=> " ",
    }
    puts "\n I'm a robot built only for tic-tac-toe."
    puts "\n I was programmed, however, to hate tic-tac-toe."
    puts "\n Let's get this over with."
    puts "\n Input your name or whatever"
    @user_name = gets.chomp
  end

  def win_condition
    @win = [['a1','a2','a3'], ['b1','b2','b3'], ['c1','c2','c3'], ['a1','b1','c1'], ['a2','b2','c2'], ['a3','b3','c3'], ['a1','b2','c3'], ['c1','b2','a3']]
  end

  def players
    @human = 'X'
    @bot = 'O'
  end

  def board
    #This was straight-up stolen from the internet.  I had no idea how to make the board.
    puts " 1   #{@squares[:a1]} | #{@squares[:b1]} | #{@squares[:c1]} "
    puts "    --- --- ---"
    puts " 2   #{@squares[:a2]} | #{@squares[:b2]} | #{@squares[:c2]} "
    puts "    --- --- ---"
    puts " 3   #{@squares[:a3]} | #{@squares[:b3]} | #{@squares[:c3]} "
  end

  def new_game
    puts
    player_turn

  end

  def player_turn
  puts "\n Make a move I guess. Or don't, I don't care."
    input = gets.chomp
    if input == 2

    else

    end
    @symbol = 'X'
  end

  def bot_turn
    decide_space
    @symbol = 'O'
  end