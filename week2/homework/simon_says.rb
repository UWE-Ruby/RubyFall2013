module SimonSays
	
	def echo(word)
		word
	end
	
	def shout(word)
		word.upcase
	end

	def repeat(word, n = 2)
		([word] * n).join " "
	end

	def start_of_word(word, n)
		word[0...n]
	end

	def first_word(word)
		word.split(' ').first
	end
end