module SimonSays

	def echo(greeting)
		greeting
	end
	
	def shout(greeting)
		greeting.upcase
	end
	
	def repeat(greeting, how_many=2)
		long_greeting = ((greeting + " ") * how_many).rstrip
	end
	
	def start_of_word(word, range)
		word[0..(range - 1)]
	end

	def first_word(phrase)		
		phrase[0..(phrase.index(" ") - 1 )]
	end

end

