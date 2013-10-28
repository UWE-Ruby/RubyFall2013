class Book

	attr_accessor :title, :pages
	#att_reader -> if only want them to read but can't change something
	#att_writer -> if only want ppl to change, but not see something

	# Create a counter that will count all book instances created
	def self.book_count
		@@book_count ||= 0  #if book isnt already set, set it to 0.
	end

	def initialize(title, pages)
		@@book_count += 1  #automatically add 1 to book count whenever book is created
		@title = title
		@pages = pages
	end

	def page_count
		"Page count is #{@pages}"
	end
end
