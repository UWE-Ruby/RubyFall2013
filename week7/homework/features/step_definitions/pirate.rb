class PirateTranslator
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
end