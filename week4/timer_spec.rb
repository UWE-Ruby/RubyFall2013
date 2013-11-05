require './code_timer.rb'

describe CodeTimer do 

	it " should run out code  " do 
	flag = false

		CodeTimer.time_code do 
		 flag = true
		end
		flag.should eq true
	end

	it "should timer our code" do 
		CodeTimer.time_code do 
			sleep(3)
			puts "hi"
		end
		
		run_time.should be_within(0.1).of(3.0)


	end
end
