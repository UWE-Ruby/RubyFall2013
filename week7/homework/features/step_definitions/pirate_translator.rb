class Pirate Translator
	def say something

		PIRATE_WORDS = {
			Hello_friend: "Ahoy Matey"
		}
		
	end

	def translate
		Pirate_lookup (@said) "\n Shiber me timbers you scurvey dog!"
	
	end

	private

	def pirate_lookup said
		key = said.gsub(' ', ' ').downcase.to_sym
		PIRATE_WORDS[key]
		
	end
end