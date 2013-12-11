require 'C:\Sites\RubyFall2013\week2\exercises\book.rb'

describe Book do

	it "should have a title" do
		book = Book.new
			book.should respond_to "title"
	end

	
end