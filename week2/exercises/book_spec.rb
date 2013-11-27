# This is an rspec file

require './book.rb'

describe Book do

	
	# :: before name means class level method
	context "::new" do
		it "should create a new book" do
			Book.new.title.should eq "TITLE"
		end
	end


	# Group the title tests together
	# hash mark # means instance methods
	context "#title" do

		before :each do
			@book = Book.new("Harry Potter", 200)
		end

		it "should respond to title" do
			@book.should respond_to "title"
		end
	
		it "should have a title" do
			@book.should_not be_nil
		end

		# Will lookf or method called title=
		it "should allow me to set title" do
			@book.title = "yodeling"
			@book.title.should eq "yodeling"
		end
	end

	context "#PageCount" do
		it "should return the page count" do
			@book.page_count.should eq "Page count is 200"
		end
	end


end


describe "more" do
	context "asdf" do
		it "should" do
			Book.new
			Book.new
			Book.book_count.should eq 2
		end
	end
end