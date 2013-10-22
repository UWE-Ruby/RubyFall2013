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
  
  context "#title" do  # lb sign refers to instance method
    
    it "should have a title" do
      book = Book.new("Harry Potter", 200)
      book.title.should_not be_nil 
      # or
      #G book.title.should respond_to "title"  # that title method exists
    end
  end
end
    
    