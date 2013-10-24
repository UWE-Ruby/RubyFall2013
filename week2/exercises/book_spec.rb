require './book.rb'

describe Book do

	context "::book_count" do		
		it "should count how many books have been created"
	end

	before :each do
		@book = Book.new
	end

	it "should respond to title" do
		@book.should respond_to "title"
	end

	it "should allow me to set the title" do
		@book.title = "Snow Crash"
		@book.title.should eq "Snow Crash"
	end

end