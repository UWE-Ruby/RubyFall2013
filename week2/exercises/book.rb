class Book

	attr_accessor :title
	
	#Class level method:
	def self.book_count
	# can also use ClassName. (in this case, Book.book_count)
	
		#Viewable at class level, without an instance
		@@book_count
		
	
	
	end
	
	def test
		@test = "hello"
	end
		
	def out_put_test
		puts @test
		puts @@book_count
end
