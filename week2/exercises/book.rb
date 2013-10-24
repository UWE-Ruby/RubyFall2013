class Book

	attr_accessor :title, :page_count

	@@book_count = 0						# sets initial value for class

	def self.book_count
		@@book_count   # cless level
	end

	def initialize title = "Not Set" page_count = 0
		@@book_count += 1
		@page_count = page_count
		@title = title
	end

	def test
		@test = "Hello"
	end

	def output_test
		puts @test

end