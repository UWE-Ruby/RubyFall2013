require "#{File.dirname(__FILE__)}/code_timer"

describe Timer2 do

	it "should run our code" do
		flag = false

		CodeTimer.time_code do
			flag = true
		end

		flag.should eq true

	end

	it "should time our code" do

		run_time = CodeTimer.time_code do
			sleep(3)
			puts "hi"
		end

		run_time.should be_within(0.1).of(3.0)
	end

end