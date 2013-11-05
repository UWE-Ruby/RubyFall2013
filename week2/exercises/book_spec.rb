require './book'

describe Book do

<<<<<<< HEAD
	context "::book_count" do

	it "should count how many books have been created" do
		Book.new	
		Book.new	
		Book.new	
		Book.book_count.should eq 3	
	end
end


	
	it "should should set some defaults" do
		@book.new
	end
	it "should allow me to set the title" do
	@boot.title = "Harry Potter"
	@book.title.should eq "Harry Potter"


	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end
end
=======
  
  context "::book_count" do

    it "should count how many books have been created" do
      Book.new
      Book.new
      Book.new
      Book.book_count.should eq 3
    end

  end

  context "::new" do

    it "should set some defaults" do
      Book.new.title.should eq "Not Set"
    end

    it "should allow us to set the page count" do
      book = Book.new "Harry Potter", 5
      book.page_count.should eq 5
    end

  end
  
  context "#title" do

    before :each do
      @book = Book.new
    end

    it "should have a title" do
      @book.should respond_to "title"
    end

    it "should allow me to set the title" do
      @book.title = "Snow Crash"
      @book.title.should eq "Snow Crash"
    end



  end

end
>>>>>>> 4706ad52545867a37a0e21a394c5e1103020fe67
