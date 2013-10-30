require './book.rb'

describe Book do

#	context "::new" do

	#it "should set some defaults" do 
	#	Book.new.title.should eq "Not Set"
	#end
#end

it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end

	before :each do
		@book = Book.new("Harry Potter", 200)
	end
	it "should respond to title" do
		@book.should respond_to "title"
	end

	#context "#title" do

	#it "should allow me to set the title" do 
	#	@book.title = "Snow Crash"
	#	@book.title should eq "Snow Crash"
	#	end

	#end
	
end
