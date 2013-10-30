require './book.rb'

#describe the Book class
describe Book do

	context "::book_count" do
		it "should count how many books have been created" do
			Book.new.book_count.should eq 3
		end
	end

	context "::new" do
		it "should set some default" do
			Book.new.title.should eq "Not set"
		end

		it "should allow us to set book count" do
			Book.new.book_count.should eq 5
		end
	end

	#set Book instance once and use everywhere
	before :each do
		#create new instance of Book
		@book = Book.new
	end

	# @ instance variable, variable is available within instance
	it "should have a title" do
		@book.should respond_to "title"
		#@book.should_not be_nil
	end

	it "should allow me to set the title" do
		@book.title = "Snow Crash"
		@book.title.should eq "Snow Crash"
	end

	#it "should return the page count" do
		#@book.page_count.should eq "Page count is 200"
	#end
end
