require "color_text"

class Bingo

  def initialize
    #map of all places that are possible wins
    @columns = [      
      [:a1,:a2,:a3,:a4,:a5],
      [:b1,:b2,:b3,:b4,:b5],
      [:c1,:c2,:c3,:c4,:c5],
      [:d1,:d2,:d3,:d4,:d5],
      [:e1,:e2,:e3,:e4,:e5],
      
      [:a1,:b1,:c1,:d1,:e1],
      [:a2,:b2,:c2,:d2,:e2],
      [:a3,:b3,:c3,:d3,:e3],
      [:a4,:b4,:c4,:d4,:e4],
      [:a5,:b5,:c5,:d5,:e5],
      
      [:a1,:b2,:c3,:d4,:e5],
      [:e1,:d2,:c3,:b4,:a5]
    ]
    
 
    @user = ' X'.red 
  
    #Get Number of Users
    put_line
    puts "\n  RUBY BINGO".purple
    print "\n How many human players? ".neon
    STDOUT.flush
    @users_count = gets.chomp.to_i
    put_bar

    #Get User's Names
    @user_name = []
    @user_score = []
    1.upto(@users_count) do |i|
      print "\n Player #{i}, what is your name? ".neon
    
      @user_name << gets.chomp
      @user_score[i-1] = 0
      put_bar
    end

    
    start_game
  end

  def start_game 
    #bingo slots
    @places =  Hash.new { |hash, key| hash[key] = " "  }
    @places_keys = [
      :a1,:a2,:a3,:a4,:a5,
      :b1,:b2,:b3,:b4,:b5,
      :c1,:c2,:c3,:c4,:c5,
      :d1,:d2,:d3,:d4,:d5,
      :e1,:e2,:e3,:e4,:e5
    ]

    @bingo_cards = []

    fill_cards(@users_count)

    user_turn
  end

  def pick_number(num)
    #randomly pick the bingo board numbers
          case num
          when 0..4
            rand(1..15)
          when 5..9
            rand(16..30)
          when 10..11
            rand(31..45)
          when 12
            " X".red
          when 13..14
            rand(31.45)
          when 15..19
            rand(46..60)
          when 20..24
            rand(61..75)
          else
            0 
          end
  end

  def fill_cards(number)
    #fill up each bingo card with the random numbers and put in bingo array
    number.times do 
      @places_keys.each_with_index do |n,i| 
        @places[n] = pick_number(i)
      end
      @bingo_cards << @places.dup
    end
  end

  def restart_game 
    (1...20).each { |i| put_line }
    start_game 
  end
  
  def put_line
    puts ("-" * 80).red
  end
  
  def put_bar
    puts ("#" * 80).red
    puts ("#" * 80).red
  end
  
 def draw_game
  #draw out the bingo board for each user
    puts ""
    puts ""
      @bingo_cards.each_with_index do |bingo,i|
        puts " #{@user_name[i]}"
        puts " 1   #{bingo[:a1]} | #{bingo[:b1]} | #{bingo[:c1]} | #{bingo[:d1]} | #{bingo[:e1]}"
        puts "    --- --- --- --- ---"
        puts " 2   #{bingo[:a2]} | #{bingo[:b2]} | #{bingo[:c2]} | #{bingo[:d2]} | #{bingo[:e2]}"
        puts "    --- --- --- --- ---"
        puts " 3   #{bingo[:a3]} | #{bingo[:b3]} | #{bingo[:c3]} | #{bingo[:d3]} | #{bingo[:e3]}"
        puts "    --- --- --- --- ---"
        puts " 4   #{bingo[:a4]} | #{bingo[:b4]} | #{bingo[:c4]} | #{bingo[:d4]} | #{bingo[:e4]}"
        puts "    --- --- --- --- ---"
        puts " 5   #{bingo[:a5]} | #{bingo[:b5]} | #{bingo[:c5]} | #{bingo[:d5]} | #{bingo[:e5]}"
        put_line

        puts " Bingo Number: #{@random}".red
     

      
    end
  end
  
  
  def times_in_column arr, item, bingo
    #count the number of X's in the column to see if 5 in a row
    times = 0
      arr.each do |i| 
        times += 1 if bingo[i] == item
      end
    if times == 5 
      return true
    else
      return false
    end
  end
  
  
  def user_turn
    put_line
    puts "\n  RUBY BINGO".purple
    draw_game
    print "\n Please type 'go' or type 'exit' to quit: ".neon
    STDOUT.flush
    input = gets.chomp.downcase.to_str
    put_bar
    if input.length == 2
      @random = rand(1..75)
      puts @random
      @bingo_cards.each do |bingo|
        @places_keys.each do |key|
        bingo[key] = @user if bingo[key] == @random
        end
      end
      put_line
      check_game(@user)
      
    else
      wrong_input unless input == 'exit'
    end
  end
  
  def wrong_input
    put_line
    puts " Please type go or exit".red
    user_turn
  end
  
  
  def check_game(next_turn)
  
    game_over = nil
    
    @bingo_cards.each_with_index do |bingo, i|
      @columns.each do |column|

      # see if user has won
        if times_in_column(column, @user, bingo) == true
          put_line
          draw_game
          put_line
          @user_score[i] += 1
          puts ""
          puts " Game Over -- #{@user_name[i]} WINS!!!\n".blue
          @user_name.each_with_index do |user,z|
            puts "#{user}  #{@user_score[z]} \n".green
          end
          game_over = true
          ask_to_play_again(true)
        end
      end
    end
    
    unless game_over
      user_turn
    end
  end

  def ask_to_play_again(response) 
    print " Play again? (Yn): "
    STDOUT.flush
    response = gets.chomp.downcase
    case response
    when "y"   then restart_game 
    when "yes" then restart_game 
    when "n"   then #do nothing
    when "no"  then #do nothing
    else ask_to_play_again 
    end
  end
  
end

Bingo.new