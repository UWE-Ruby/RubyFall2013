# Martin Nash

module SimonSays

	def echo(input="")
		input #send the input right back
	end

	def shout(input="")
		input.upcase #send it back capitalized
	end

	def repeat(input="", times=2)
		double = "#{input} " * times.to_i #leaves trailing space
		double.strip # gets rid of trailing space
	end

	def start_of_word(input="", chars=1)
		input[0...chars] # returns zero up to but not including chars
	end

	def first_word(input="")
		components = input.split(/\s/) # split on whitespace
		components.first # return first component
	end

end