
class PirateTranslator

  @@dictionary = {
    "Hello Friend" => "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
  }

  def say(text)
    @text = text
  end

  def translate
    @@dictionary[@text]
  end

end
