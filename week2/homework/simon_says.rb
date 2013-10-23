module SimonSays

	def echo(blargm)
		blargm
	end

	def shout(blargm)
		blargm.upcase
	end

	def repeat(blargm, times=2)
		a = Array.new(blargm, times)
		a.join ' '
	end

	def start_of_word(blargm, n)
		blargm[0..(n-1)]
	end

	def first_word(blargm)
		blargm.split(" ")[0]
	end

end