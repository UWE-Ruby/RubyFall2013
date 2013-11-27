class Book

	attr_accessor :title 
	attr_reader :page_count

	@@book_count = 0

	def self.library_count
		@@book_count
	end

	def initialize title = "Not Set", page_count = 0
		@@book_count += 1
		@page_count = page_count
		@title = title
		
	end

end