module SimonSays
	
	def echo (input = "")
		input
	end		

	def shout (input = "")
		input.upcase 
	end	

	def repeat (input = "", n = 2)
		newString = ([input] * n).join(' ')
		newString.strip
	end	

	def start_of_word (input, numberOfLetters)
		input[0,numberOfLetters]
	end	

	def first_word (input = "")
		input.split[0]
	end
end