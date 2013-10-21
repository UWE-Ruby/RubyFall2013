module SimonSays
	
	def echo(message)
		@message = message
	end
	
	def shout(thing_to_shout)
		@thing_to_shout = thing_to_shout.upcase
	end
	
	def repeat(thing_to_repeat, times_to_repeat = 2)
		@thing_to_repeat = thing_to_repeat
		((@thing_to_repeat << ' ')*times_to_repeat).chop
	end
	
	def start_of_word(word, number_of_chars)
		@word = word
		@number_of_chars = number_of_chars
		@word_start = @word.slice(0..(@number_of_chars - 1))	
	end
	
	def first_word(foo)
		@foo = foo
		@bar = @foo.split	
		@bar[0]
	end
	
end