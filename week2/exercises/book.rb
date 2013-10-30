class Book

	attr_accessor :title
	attr_reader :page_count
	#attr_reader :title
	#attr_writer :title

	@@book_count = 0

	# self. places it at class level
	def self.book_count
		# @@ variable vieweable at class level
		@@book_count
	end

	def intialize title = "Not set", book_count = 0
		#increment book_count
		@@book_count += 1
		@book_count = book_count
		@title = title
	end

	def test
		@test = "hello"
	end

	def output_test
		puts @test
		puts @@book_count
	end

	#def title
		#@title
	#end

	#def title= title
		#@title = title
	#end

	#def title(title)
		#@title = title
		#@pages = pages
	#end

	#def page_count
		#{}"Page count is #{@pages}"
	#end
end
