require './book'

describe Book do
<<<<<<< HEAD
	context "::new" do

		before :each do
			@book = Book.new
		end	

		it "should set some defaults" do
			Book.new.title.should eq "Not Set"
		end
		
		it "should allow us to set the page count" do
			book = Book.new "Harry Potter", 5
			book.page_count.should eq 5
		end		
	end	

	#refactoring, since book = Book.new has been used twice (if you use it twice, refactor)
	#making a new 

	context "#title" do

		it "should have a title" do
			#book = Book.new - refactored, see above
			#@book.title.should_not be_nil #this was wrong somehow, but not sure how
			@book.should respond_to "title"
		end	

		it "should allow me to set the title" do
			#book = Book.new - refactored, see above
			@book.title = "Snow Crash"
			@book.title.should eq "Snow Crash"
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

>>>>>>> upstream/master
end