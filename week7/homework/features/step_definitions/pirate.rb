class PirateTranslator
<<<<<<< Updated upstream
	PIRATE_WORDS = {
		"Hello Friend" => "Ahoy Matey"
	}
	def say(str)
		@said = lookup_pirate(str).to_s
	end

	def translate
		@said + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end

private
	def lookup_pirate(str)
		PIRATE_WORDS[str]
	end
=======

  PIRATE_WORDS = {
    hello_friend: "Ahoy Matey"
  }

  def say something
    @said = something
  end

  def translate
    pirate_lookup(@said) + "\n Shiber Me Timbers You Scurvey Dogs!!"
  end

private

  def pirate_lookup said
    key = said.gsub(' ', '_').downcase.to_sym
    PIRATE_WORDS[key]
  end
>>>>>>> Stashed changes
end