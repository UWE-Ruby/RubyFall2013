require "#{File.dirname(__FILE__)}/worker"

describe Worker do

	it "executes a block and returns a string" do
		result = Worker.work do
			"hello"
		end
		result.should == "hello"
	end

	it "executes a block and returns a number" do
		result = Worker.work do
			3 + 4
		end
		result.should == 7
	end

	it "executes a block in the context of the calling method" do
		n = 1
		result = Worker.work do
			n + 4
		end
		result.should == 5
	end


	it "executes a block 3 times and returns the result" do
		n = 5
		result = Worker.work(3) do
			n += 1
		end
		result.should == 8
	end

end
