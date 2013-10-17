class SimonSays

	#define methods
	#echo - echo("string") repeat back a string
	#shout - shout("string") convert a string to caps
	#repeat - repeat("string", @num) repeat a string @num times
	#start_of_word - start_of_word("string", @num) return @num characters of string
	#first_word - first_word("multi word string") return first word of string

	attr_accessor :title, :pages

	def initialize(title, pages)
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
	end
end