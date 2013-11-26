class PirateTranslator
  attr_accessor :phrases

  def initialize
    @phrases = {
      "Hello Friend" => "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
    }
  end

  def say text
    @text = text
  end

  def translate
    @phrases[@text]
  end
end