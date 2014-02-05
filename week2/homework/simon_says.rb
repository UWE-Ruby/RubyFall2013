module SimonSays
	def echo(says)
		@says = says
	end
	
	def shout(shouts)
		@shouts = shouts
		@shouts.upcase
	end

	def repeat(word, *times)
			@word = word
			@times = times[0]
			if @times == nil 
				@times = 2
			end
			@word  = "#{@word} " * @times 
			@word.rstrip 
	end

	def start_of_word(word, number)
		a = word.split(//)
		number = number - 1
		b = a[0..number]
		b.join
	end

	def first_word(word)
		a = word.split(/ /)
		a[0]
	end

end

# Question .. is it correct to use instance variables here as in for
# echo/shout/repeat methods or better ( more ruby?? ) to use
# as in start_or_word and first_word ?? 

