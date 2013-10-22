require './book'

#describe the Book class
describe Book do
	before :each do
		#create new instance of Book
		@book = Book.new("Harry Potter", 200)
	end
	it "should have a title" do
		@book.should respond_to "title"
		#@book.should_not be_nil
	end

	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end
end
