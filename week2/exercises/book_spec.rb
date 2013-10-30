#require './book.rb' 
# or:
require './book'
  
# require requires full path. Require loads it once Include will include each time...
# try in irb

##describe Book do
##	before :each do
##		@book = Book.new("Harry Potter", 200)
##	end
##	it "should respond to title" do
##		@book.should respond_to "title"
##	end
##
##	it "should return the page count" do
##		@book.page_count.should eq "Page count is 200"
##	end
##end

###
describe Book do
  context "::book_count" do
    it "should count how many books have been created" do
      Book.new
      Book.new
      Book.new
      Book.book_count.should eq 3
    end    
  end
  context "::new" do  #::new indicates Book.new :: befowre a method indicates a class level 
    it "should set some defaults" do
      Book.new.title.should eq "Not Set"
    end
    it "should allow us to set the page count" do
      @book = Book.new "Harry Potter", 5
      @book.page_count.should eq 5
    end  
  end
  context "#title" do  # lb sign refers to instance method
    before :each do
      @book = Book.new
    end
    it "should have a title" do
      @book.should respond_to "title"
    end
    it "should allow me to set the title" do  
      @book.title = "Harry Potter"
      @book.title.should eq "Harry Potter" 
    end
  end
end
    
    