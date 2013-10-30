class Book
  attr_accessor :title
  attr_reader :page_count

<<<<<<< HEAD
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
=======
  @@book_count = 0

  def self.book_count
    @@book_count
  end
>>>>>>> e040d45f81ce3c4ddfed6debf5b753b82d0e59f7

  def initialize title = "Not Set", page_count = 0
    @@book_count += 1
    @page_count = page_count
    @title = title
  end


  def test
    @test = "Hello!"
  end

  def out_put_test
    puts @test
    puts @@book_count
  end

end
