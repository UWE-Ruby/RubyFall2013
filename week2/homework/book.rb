class Book
	attr_accessor :title
	attr_reader :page_count

@@book_count = 0

	def self.book_count
		@@book_count
	end

	def initialize title = "Not Set", page_count = 0
		@@book_count += 1
		@title=title
		@page_count = page_count

	end

	def test
		@test = "hello!"
	end

	def out_put_test
		puts @test
		puts @@book_count
	end
end