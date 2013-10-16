require './book.rb'

describe Book do
	before :each do
		@book = Book.new("Harry Potter", 200)
	end

  context "#title" do
	
    it "should respond to title" do
  		@book.should respond_to "title"
  	end

    it "should have a title" do
      @book.title.should_not be_nil
    end
  end

  context "#pages" do
  	it "should return the page count" do
  		@book.page_count.should eq 200
  	end
    it "should return a page report" do
      @book.page_report.should eq "Harry Potter is 200 pages long"
    end
  end
end
