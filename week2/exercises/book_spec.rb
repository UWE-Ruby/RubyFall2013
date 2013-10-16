require './book.rb'

describe Book do
	before :each do
		@book = Book.new("Harry Potter", 200)
	end
	it "should respond to title" do
		@book.should respond_to "title"
	end

	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end
end
