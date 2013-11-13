module SimonSays
	def echo(string)
		string
	end

	def shout(string)
		string.upcase
	end

	def repeat(string, n=2)
		[string] * n * ' ' #So may variable string is now an array... I am terrible at naming ><
	end

	def start_of_word(string, n)
		string[0..n-1]
	end

	def first_word(string, n=1)
		string.split(/ /)[0]
	end
end