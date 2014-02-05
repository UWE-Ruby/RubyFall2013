module SimonSays

	def echo greeting
		greeting
	end
	
	def shout greeting
		greeting.upcase
	end
	
	def repeat greeting, how_many=2
		long_greeting = ((greeting + " ") * how_many).chop
	end
	
	def start_of_word word, range
		word[0,range]
	end

	def first_word phrase		
		phrase.split.first
	end

end

