require 'C:\Sites\RubyFall2013\week2\exercises\book.rb'

describe Book do
	
	context "::book_count" do 
		it "should count how many books have been created"
		Book.new
		Book.new
		Book.new
		Book.book_count.should eq 3
	end

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
