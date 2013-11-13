module SimonSays

	#methods

	def echo (message)
		@message = message
	end

	def shout(message_to_shout)
		@message_to_shout = message_to_shout.upcase
	end

	def repeat(word_to_repeat, times_to_repeat = 2)
		@word_to_repeat = word_to_repeat
		(@word_to_repeat + " ") * times_to_repeat + "\n"
	end

	def start_of_word(return_letters, number_of_letters)
		@return_letters = return_letters
		@number_of_letters = number_of_letters
		@chopped_string = return_letters.slice(0..(@number_of_letters -1))
	end

	def first_word(word_to_break)
		@word_to_break = word_to_break
		@result = @word_to_break.split
		@result[0]
	end