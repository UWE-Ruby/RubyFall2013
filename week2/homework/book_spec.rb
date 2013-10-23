require './book'

describe Book do
	contect "#title" do

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
end