class PirateTranslator

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
end
