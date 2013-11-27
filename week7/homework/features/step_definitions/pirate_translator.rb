class PirateTranslator
  PIRATE_TRANSLATIONS = {
          "Hello Friend" => "Ahoy Matey"
  }
  def say(pirate_words)
     @pirate_speak = get_pirate_translation(pirate_words)
  end
  def translate
     @pirate_speak  + "\n Shiber Me Timbers You Scurvey Dogs!!" ##+ ' Shiber Me Timbers You Scurvey Dogs!!'
  end
  def get_pirate_translation(pirate_words)
          PIRATE_TRANSLATIONS[pirate_words]
  end
end
