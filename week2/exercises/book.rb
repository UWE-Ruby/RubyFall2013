class Book

	attr_accessor :title, :pages

	@@book_count = 0

	def initialize(title, pages)
		@title = title
		@pages = pages

		@@book_count += 1
	end

	def page_count
		"Page count is #{@pages}"
	end
end
