require './book.rb'

describe Book do
	before :each do
		@book = Book.new("Harry Potter", 200)
	end


	# Group the title tests together
	context "#title" do
		it "should respond to title" do
			@book.should respond_to "title"
		end
	end


	it "should have a title" do
		@book.should_not be_nil
	end


	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end

end
