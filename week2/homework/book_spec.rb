require './book'

describe Book do

	context "::book_count" do
		it "should increment book counts correctly" do
			Book.new
			Book.new
			Book.new
			Book.book_count.should eq 3
		end
	end


	context "::new" do

		it "should set some defaults" do
			Book.new.title.should eq "Not Set"
		end

		it "should allow us to set the pagecount" do
			book = Book.new "Harry Potter", 5
			book.page_count.should eq 5
		end
	end

	context "#title" do

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