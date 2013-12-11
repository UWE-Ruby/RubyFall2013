module SimonSays

	#define methods	echo, shout, repeat, start_of_word and first_word

    #echo - echo("string") repeat back a string
	def echo(string)
		string
	end

	#shout - shout("string") convert a string to caps
	def shout(string)
		string.upcase
	end

	#repeat - repeat("string", number) repeat a string number times
	def repeat(string, n=2)
		([string]*n).join(' ')
	end

	#start_of_word - start_of_word("string", number) return number characters of string
	def start_of_word(string, number)
		string[0,number]
	end

	#first_word - first_word("multi word string") return first word of string
	def first_word(string)
		#string.split(' ', 0) [0]
		string.split(/ /, 0) [0]
	end

	#any_word - any_word("multi word string", number) return number word from string
	def any_word(string, number)
		# string.split(' ', 0) [number]
		string.split(/ /, 0) [number]
	end

end