require './book.rb'

# describe the Book class
describe Book do

  before :each do
    @book = Book.new("Harry Potter", 200)
  end

  it "should have a title" do
    @book.should respond_to(:title)
    @book.should_not be_nil
  end

  it "should have page count" do
    @book.should respond_to(:page_count)
    @book.page_count.should be_integer
    @book.page_count.should be > 0
  end

  it "should FUUUUUUUUUUU" do
    @book.should respond_to(:╯°□°╯︵┻━┻)
  end

end
