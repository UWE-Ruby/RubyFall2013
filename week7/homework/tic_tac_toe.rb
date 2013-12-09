class TicTacToe

  attr_accessor :player
  attr_accessor :cpu

  def initialize player
    @lines = [
      [:a1,:a2,:a3],
      [:b1,:b2,:b3],
      [:c1,:c2,:c3],

      [:a1,:b1,:c1],
      [:a2,:b2,:c2],
      [:a3,:b3,:c3],

      [:a1,:b2,:c3],
      [:c1,:b2,:a3]
    ]

    @places = {
      a1:" ",a2:" ",a3:" ",
      b1:" ",b2:" ",b3:" ",
      c1:" ",c2:" ",c3:" "
    }

    @game_over = false

    @player = player

    puts "TIC TAC TOE"

  end

  def welcome_player
    draw_line
    @player_name = @player
    @cpu_name = "Computer"

    @cpu = rand() > 0.5 ? 'X' : 'O'
    @player = @cpu == 'X' ? 'O' : 'X'

    draw_line
    start_game

    "Welcome #{@player_name}"
  end

  def start_game
    player_turn
  end

  def draw_game
    puts ""
    puts " #{@player_name}: #{@player}"
    puts " #{@cpu_name}: #{@cpu}"
    puts ""
    puts "     a   b   c"
    puts ""
    puts " 1   #{@places[:a1]} | #{@places[:b1]} | #{@places[:c1]} "
    puts "    --- --- ---"
    puts " 2   #{@places[:a2]} | #{@places[:b2]} | #{@places[:c2]} "
    puts "    --- --- ---"
    puts " 3   #{@places[:a3]} | #{@places[:b3]} | #{@places[:c3]} "
    puts ""
  end

    def cpu_turn
    move = cpu_find_move
    @places[move] = @cpu
    draw_line
    check_game(@player)
  end

  def cpu_find_move


    k = @places.keys;
    i = rand(k.length)
    if @places[k[i]] == " "
      return k[i]
    else
      @places.each { |k,v| return k if v == " " }
    end
  end

  def times_in_column arr, item
    times = 0
    arr.each do |i|
      times += 1 if @places[i] == item
      unless @places[i] == item || @places[i] == " "
        return 0
      end
    end
    times
  end

  def empty_in_column arr
    arr.each do |i|
      if @places[i] == " "
        return i
      end
    end
  end

  def player_turn
    draw_game
    print " #{@player_name}, please input move coordinates move or type 'exit' to quit: "
    input = gets.chomp.downcase.to_sym
    if input.length == 2
      a = input.to_s.split("")
      if(['a','b','c'].include? a[0])
        if(['1','2','3'].include? a[1])
          if @places[input] == " "
            @places[input] = @player
            check_game(@cpu)
          else
            wrong_move
          end
        else
          wrong_input
        end
      else
        wrong_input
      end
    else
      wrong_input unless input == :exit
    end
  end

  def wrong_input
    draw_line
    puts " Invalud coordinates."
    player_turn
  end

  def wrong_move
    draw_line
    puts " You must choose an empty slot"
    player_turn
  end

  def moves_left
    @places.values.select{ |v| v == " " }.length
  end


  def check_game(next_turn)

    game_over = nil

    @lines.each do |column|
      if times_in_column(column, @cpu) == 3
        draw_line
        draw_game
        draw_line
        puts ""
        puts " Game Over -- #{@cpu_name} WINS!!!"
        game_over = true
      end
      if times_in_column(column, @player) == 3
        draw_line
        draw_game
        draw_line
        puts ""
        puts " Game Over -- #{@player_name} WINS!!!"
        game_over = true

      end
    end

    unless game_over
      if(moves_left > 0)
        if(next_turn == @player)
          player_turn
        else
          cpu_turn
        end
      else
        draw_line
        draw_game
        draw_line
        puts ""
        puts " Game Over -- DRAW!\n"
      end
    end
  end

  def draw_line
    puts ("-" * 80)
  end

end