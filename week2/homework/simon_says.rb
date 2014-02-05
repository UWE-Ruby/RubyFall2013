module SimonSays

	def SimonSays.echo(message)
		@message = message
	end

	def SimonSays.shout(message)
		@message = message.upcase
	end

	def SimonSays.repeat(message, repeats = 2)
		Array.new(repeats, message).join(" ")
	end

	def SimonSays.start_of_word(message, index)
		@message = message[0,index]
	end

	def SimonSays.first_word(message)
		@message = message.split(" ")[0]
	end

end