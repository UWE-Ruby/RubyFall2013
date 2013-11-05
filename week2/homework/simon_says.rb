module SimonSays
	include Enumerable

	def echo(arg)
		arg
	end

	def shout(arg)
		arg.upcase
	end

	def repeat(word, repetitions = 2)
		((word + " ")*repetitions).chop
	end

	def start_of_word(word, length)
		word[0,length]	
	end

	def first_word(sentence)
		a = sentence.split
		a[0]	
	end
end