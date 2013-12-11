class PirateTranslator

	def say phrase
		@phrase = phrase
	end

	def translate
		if @phrase == "Hello Friend"
			return "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
		end
	end
end

