module SimonSays

	def echo(message)
		message
	end

	def shout(message)
		message.upcase
	end

	def repeat(message, int = 2)
		((message + " ") * int).chop	
	end

	def start_of_word(string, int)
		s = string
		s.slice(0, int)
	end

	def first_word(message)
		m = message.split(" ")
		m[0]
	end
end
