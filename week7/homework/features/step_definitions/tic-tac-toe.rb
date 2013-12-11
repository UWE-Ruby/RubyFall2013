
class TicTacToe
    attr_accessor :player, :computer, :board
    SYMBOLS = [:X, :O]


def initialize (player)
    @player = player
    puts board
    end

def welcome_player 
    return "Welcome #{@player}"
end

def player_symbol
    @player_symbol[:player]
end

def computer_symbol 
    @player_symbol[:computer]
end

def current_player 
   @current_player = "Renee" || @current_player = "Computer"
end

def current_state
           row1 = "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
                row2 = "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
                row3 = "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
                row1 + "-"*row1.size+"\n"+
                row2 + "-"*row2.size+"\n"+
                row3 + "-"*row3.size+"\n"+
                "_____________"
        end


 def   player_move
       move = get_player_move.to_sym
       until open_spots.include?(move)
        move = get_player_move.to_sym
        end
        @board[move] = player_symbol
        @current_player = :computer
        move
        end

 def get_player_move
           gets.chomp
        end

def board 
     @board = {:A1 => ' ', :A2 => ' ', :A3 => ' ',
    :B1 => ' ', :B2 => ' ', :B3 => ' ',
    :C1 => ' ', :C2 => ' ', :C3 => ' '}
        end



#end class
end








































 
