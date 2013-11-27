class PirateTranslator

PIRATE_WORDS = {
	Hello_Friend: "Ahoy Matey"
}
	def say something
		@said = something
	end

	def translate 
		priate_lookup (@said) + "\n shiber me Timbers"
	end

	#private method
	private
	
	def pirate_lookup said
		key = said.gsub(' ','_').downcase.to_sym
		PIRATE_WORDS[key]
	end

end