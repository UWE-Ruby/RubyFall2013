require './book.rb'

describe Book do
	
	context "::new" do
	  it ""
	  
  end
  
	
	context "title" do
	  
	before :each do
	  
		@book = Book.new("Harry Potter", 200)
	end
	it "should respond to title" do
		@book.should respond_to "title"
	end
	it "shoud be able to set " do
    @book.title = "Good to Great"
    @book.title.should eq "Good to Great"
  end

	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end
end
end

