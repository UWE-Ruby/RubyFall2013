class PirateTranslator

PIRATE_VOCABULARY = {"Hello Friend" => "Ahoy Matey"}

	def say(what)
		@heard = listen_pirate(what)
	end

	def translate
		@heard + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end 

private 
	def listen_pirate(what)
		PIRATE_VOCABULARY[what]
	end
end
	
