require 'learn_couleurs_game/learn_couleurs.rb'

@game = LearnCouleurs.new
puts "What is your name?"
@game.player = gets.chomp
puts @game.welcome_player
@game.selection

until @game.over?
      @game.display_new_color
      @game.player_answer
      @game.display_score
end
      @game.comment_final_score

