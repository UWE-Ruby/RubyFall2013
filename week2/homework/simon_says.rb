module SimonSays

	attr_reader :the_string

	def initialize
		@the_string = the_string
	end

	def echo the_string
		the_string
	end

	def shout(the_string)
		the_string.upcase
	end

	def repeat(the_string, the_count=2)
		a = Array.new(the_count, the_string)
		a.join ' '
	end

	def start_of_word(the_string, n)
		letters = n - 1
		the_string.slice(0..letters)
	end

	def first_word(the_string)
		the_string.split[0..0].join(' ')
	end

end	
