class PirateTranslator

  attr_accessor :words

  def say(input)
    @words = input + "\n Shiber Me Timbers You Scurvey Dogs!!"
  end

  def translate
    # @words << "\n Shiber Me Timbers You Scurvey Dogs!!"
    @words.gsub!(/friend/i, "Matey")
    @words.gsub!(/hello/i, "Ahoy")
  end

end
