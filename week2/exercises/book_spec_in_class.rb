require './book.rb'

describe Book do

	context "::new" do
	#:: before a method name indicates a class level method
	# "#" before a method name indicates an instance level method
			it "should set some defaults" do
			
			end

	context "#title" do
		
		before :each do
			@book = Book.new
		end
		
		it "should have a title" do
			@book.should respond_to "title"
		end
	
		it "should allow me to set the title"
			@book.title = "Snow Crash"
			@book.title.should eq "Snow Crash"
		end
		
		
end