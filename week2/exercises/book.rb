class Book

	attr_accessor :title, :pages

  def self.library_count
    @@book_count
  end

  def test
    @test= "hello!"
  end

  def out_put_test
    puts @test
    puts @@book_count
  end
end

