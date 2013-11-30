class PirateTranslator


	@@pirate_words =  {"Hello Friend" =>"Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"}

	def say(p_string)
		@p_string = p_string
	end

	def translate
		@@pirate_words[@p_string]
	end
end