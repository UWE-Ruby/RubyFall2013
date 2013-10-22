module SimonSays

	# return string
	def echo(string)
	   string
	end

	# return string and convert string to caps
    def shout(string)
     	string.upcase
    end

    # repeat a string n times
    def repeat(string, int = 2)
	   ([string] * int).join ' '
	end

	# return start of word
    def start_of_word(string, char)
	  string.slice(0, char)
	end

	# return first word
    def first_word(string)
	  word = 1
	  @string = string
      @string.split[0...word].join(' ')
	end

end

