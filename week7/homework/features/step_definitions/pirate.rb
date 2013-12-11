class PirateTranslator
=begin
	PIRATE_TRANSLATOR = {
		"Hello Friend" => "Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
	}

	# step 1: class PirateTranslator
	# step 2: define say
	def say(arg)
        @pirate = arg
	end

	# steps 3-5: define translate
	def translate
		@result = ''
        @result = PIRATE_TRANSLATOR[@pirate]
	end
=end

	PIRATE_TRANSLATOR = {
		hello_friend: "Ahoy Matey"
	}

	def say(something)
        @said = something
	end

	def translate
		pirate_lookup(@said) + "\n Shiber Me Timbers You Scurvey Dogs!!"
	end

	private
	
	def pirate_lookup (said)
		key = said.gsub(' ','_').downcase.to_sym
		PIRATE_TRANSLATOR[key]
	end
end
