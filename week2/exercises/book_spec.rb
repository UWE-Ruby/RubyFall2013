require './book.rb'

describe Book do

	context "::book_count" do

	it "should count how many books have been created" do
		Book.new	
		Book.new	
		Book.new	
		Book.book_count.should eq 3	
	end
end


	
	it "should should set some defaults" do
		@book.new
	end
	it "should allow me to set the title" do
	@boot.title = "Harry Potter"
	@book.title.should eq "Harry Potter"


	it "should return the page count" do
		@book.page_count.should eq "Page count is 200"
	end
end
