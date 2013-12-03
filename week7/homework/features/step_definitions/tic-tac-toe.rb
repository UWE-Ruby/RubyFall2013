class TicTacToe
  SYMBOLS = [:X,:O]
  attr_accessor :player

  def initialize(player,player_s=nil)
  	@player = player
  	#@board = Array.new(10)
  	#@free_moves = (1..9).to_s
  	@turn = [:computer, :human]
  	@humans_symbol = nil
  	@computers_symbol = nil
  	#@symbols = [ "X", "O"]
  	@current_player = current_player || [:player, :computer].sample
  	choose_symbols(player_s)

  end
 
  #def whose_turn
  #	@turn = rand(2).to_s
  #	puts "#{@turn}"
  #	@turn.gsub!(/[0]/, 'humans first')
  #	@turn.gsub!(/[1]/, 'computers first')
  #	puts "#{@turn}"
  #end

  def choose_symbols(player_s)
  	player_s ||=SYMBOLS.sample
  	@player_symbol = {:computer => SYMBOLS.reject{|s| s==player_s}.first, :player => player_s}
  end

  def player_symbol
  	@player_symbol[:player]
  	#@humans_symbol_num = rand(2)
  	#puts "#{@humans_symbol_num}"
  	#@humans_symbol = @humans_symbol_num.to_s.gsub(/[0]/, 'humans plays X')
  	#@humans_symbol = @humans_symbol_num.to_s.gsub(/[1]/, 'human plays O')
  	#puts "#{@humans_symbol}"
  	##@humans_symbol = @symbols
  	##@humans_symbol = @humans_symbol.sample
  	#puts "human plays #{@humans_symbol}"
  end

  def computer_symbol
  	@player_symbol[:computer]
  	#@computers_symbol = @humans_symbol_num.gsub!(/[0]/, 'computer plays O')
  	#@computers_symbol = @humans_symbol_num.gsub!(/[1]/, 'computer plays X')
  	#puts "#{@computers_symbol}"
  	##@computers_symbol = @symbols.reject{|s| s==@humans_symbol}.first
  	#puts "computer plays #{@computers_symbol}"
  end

  def current_player
  	{:computer => "Computer", :player => @player}[@current_player]
  end

  def welcome_player
  	"Welcome #{@player}"
  end

  def drawboard
  	puts "A1|A2|A3\n"
  	puts "--+--+--\n"
  	puts "B1|B2|B3\n"
  	puts "--+--+--\n"
  	puts "C1|C2|C3\n"
  end

  def human_move
  end

  def computer_move
  end

  def ai_dumb
  end

  def ai_line_full
  end

  def ai_line_friend
  end

  def ai_line_block
  end

end
#www.eecs.berkeley.edu/~bh/pdf/v1ch06.pdf
#AI - http://edais.mvps.org/Tutorials/TTTAI/