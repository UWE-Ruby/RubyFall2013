#!/usr/bin/ruby


module SimonSays
	def echo (word)
		word
	end
	def shout (word)
		word.upcase
	end
	def repeat (*args)
		if (args.length == 1)
			((args[0] + " ") * 2).strip
		else	
			((args[0] + " ") * args[1]).strip
		end
	end
	def start_of_word (word, no)
		word[0...no]
	end
	def first_word(word)
		word.split(' ')[0]
	end
end