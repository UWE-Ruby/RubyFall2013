class TicTacToe
  attr_accessor :player

  def initailize(human)
  	@human = human
  	@board = Array.new(10)
  	@free_moves = (1..9).to_a
  	@turn = rand(2)
  	@humans_symbol = rand(2)
  end

  def whose_turn
  	@turn = rand(2).to_s
  	puts "#{@turn}"
  	@turn.gsub!(/[0]/, 'humans first')
  	@turn.gsub!(/[1]/, 'computers first')
  	puts "#{@turn}"
  end

  def human_plays
  	@humans_symbol_num = rand(2)
  	puts "#{@humans_symbol_num}"
  	@humans_symbol = @humans_symbol_num.to_s.gsub(/[0]/, 'humans plays X')
  	@humans_symbol = @humans_symbol_num.to_s.gsub(/[1]/, 'human plays O')
  	puts "#{@humans_symbol}"
  end

  def computer_plays
  	@computers_symbol = @humans_symbol_num.gsub!(/[0]/, 'computer plays O')
  	@computers_symbol = @humans_symbol_num.gsub!(/[1]/, 'computer plays X')
  	puts "#{@computers_symbol}"
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
