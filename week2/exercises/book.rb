class Book
  attr_accessor :title
  attr_reader :page_count

  @@book_count = 0

<<<<<<< HEAD
  def self.library_count
    @@book_count
  end

  def test
    @test= "hello!"
=======
  def self.book_count
    @@book_count
  end

  def initialize title = "Not Set", page_count = 0
    @@book_count += 1
    @page_count = page_count
    @title = title
  end


  def test
    @test = "Hello!"
>>>>>>> fde8a74b427aa79cd14a4014401682c12225e82b
  end

  def out_put_test
    puts @test
    puts @@book_count
  end
<<<<<<< HEAD
end

=======

end
>>>>>>> fde8a74b427aa79cd14a4014401682c12225e82b
