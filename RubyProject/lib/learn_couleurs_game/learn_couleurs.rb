class LearnCouleurs

  attr_accessor :player,:score,:over,:current_couleur

  def initialize
    @player = ""
    @couleurs = { 40 => "noir", 41 => "rouge", 42 => "vert", 43 => "jaune", 44 => "bleu", 47 => "gris"
    }
    @current_couleur = 0
    @over = false
    @rounds = -1
    @score = 0
    @max_rounds = 5
  end

  def welcome_player
    welcome = "Bienvenue "+ @player + "\n\n"
  end

  def selection
    puts "Reviser(r) ou Commencer(c)?"
    selection = gets.chomp
    if selection == "r"
        display_couleurs
    elsif selection == "c"
        @rounds +=1
    else
        abort("Invalide")
    end
  end

  def display_couleurs
    puts "Liste couleurs:"
    @couleurs.each { |key, value| print "   \033["+key.to_s+"m   \033[0m" + ' = ' + value + "\n\n" }
    @over = true
  end

  def over?
    if @rounds == @max_rounds
      @over = true
    end
    @over
  end

  def display_new_color
    @current_couleur = @couleurs.keys.sample
    puts "Quelle couleur?"
    couleur_code = "   \033["+@current_couleur.to_s+"m   \033[0m\n"
    puts couleur_code
  end

  def player_answer
    answer = gets.chomp
    until answer == @couleurs[@current_couleur]
     puts "Oh non! Essaie encore:\n\n"
     @score-=1
     answer = gets.chomp
    end
     puts "Bravo!\n\n"
     @score+=1
     @rounds+=1
  end

  def display_score
    puts "Score: "+@score.to_s+"/"+@max_rounds.to_s
  end

  def comment_final_score
    if @rounds == -1
      puts "Essaie de jouer maintenant!"
    elsif @score < 0
      puts "CATASTROPHE!!!"
    elsif @score < @max_rounds/2
      puts "MOUAIS..."
    elsif @score < @max_rounds*3/4
      puts "BIEN!"
    elsif @score < @max_rounds
      puts "TRES BIEN!"
    else
      puts "PARFAIT!!!"
    end
  end

end
