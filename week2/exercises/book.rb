class Book
  attr_accessor :title
  attr_reader :page_count

  @@book_count = 0

<<<<<<< HEAD
	def initialize (title, pages)
		@title = title
		@pages = pages
	end
=======
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
