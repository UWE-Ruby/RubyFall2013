class TicTacToe
  attr_accessor :player

  def initialize(human)
  	@human = human
  	@board = Array.new(10)
  	@free_moves = (1..9).to_a
  	@turn = rand(2)
  	@humans_symbol = nil
  	@computers_symbol = nil
  	@symbols = [ "X", "O"]
  end
 
  def whose_turn
  	@turn = rand(2).to_s
  	puts "#{@turn}"
  	@turn.gsub!(/[0]/, 'humans first')
  	@turn.gsub!(/[1]/, 'computers first')
  	puts "#{@turn}"
  end

  def player_symbol
  	#@humans_symbol_num = rand(2)
  	#puts "#{@humans_symbol_num}"
  	#@humans_symbol = @humans_symbol_num.to_s.gsub(/[0]/, 'humans plays X')
  	#@humans_symbol = @humans_symbol_num.to_s.gsub(/[1]/, 'human plays O')
  	#puts "#{@humans_symbol}"
  	#puts "#{@humans_symbol}"
  	@humans_symbol = @symbols
  	@humans_symbol = @humans_symbol.sample
  	#puts "human plays #{@humans_symbol}"
  end

  def computer_symbol
  	#@computers_symbol = @humans_symbol_num.gsub!(/[0]/, 'computer plays O')
  	#@computers_symbol = @humans_symbol_num.gsub!(/[1]/, 'computer plays X')
  	#puts "#{@computers_symbol}"
  	@computers_symbol = @symbols.reject{|s| s==@humans_symbol}.first
  	#puts "computer plays #{@computers_symbol}"
  end

  def current_player
  end

  def welcome_player
  	puts "Welcome #{@player}"
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

#www.eecs.berkeley.edu/~bh/pdf/v1ch06.pdf
end
