class Book
	attr_accessor :title
	attr_reader :page_count
	#attr_reader :title #reader only ? 
	@@book_count = 0
	
	#self. = class level 
	def self.book.count
		## @@ = class level varable
		@@book_count 
	end

	def initalize title = "Not Set", page_count = 0
		@@book_count += 1
		@page_count = page_count	
		@title = title
	end

	def test
		@test = "Hellow!"
	end

	def out_put_test
		puts @test
		puts @@book_count
	end

end
