require '/full/path/to/book.rb'
#include expects a relative path
#but include allows you to reload in that again

describe Book do
  context "#title"
    it "should have a title" do
        book = Book.new
        book.title.should_not be_nil
    end

    
end
