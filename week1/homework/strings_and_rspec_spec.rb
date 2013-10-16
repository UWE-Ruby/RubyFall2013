# encoding: UTF-8

# RubyFall2013 Scott Dodson "06"

# Please make these examples all pass
# You will need to change the 3 pending tests
# You will need to write a passing test for the first example 
# 	(Hint: If you need help refer to the in-class exercises)
# The two tests with the pending keyword, require some ruby code to be written
# 	(Hint: You should do the reading on Strings first)


class String
  def items
    split('.')
  end
end

describe String do
	context "When a string is defined" do
		before(:all) do
			@my_string = "Renée is a fun teacher. Ruby is a really cool programming language"
		end
		it "should be able to count the charaters" do
			@my_string.should have(66).characters #do something with @my_string here
		end
		it "should be able to split on the . charater" do
			@my_string.should have(2).items	
		end
		it "should be able to give the encoding of the string" do
			@my_string.encoding.should eq (Encoding.find("UTF-8"))
		end
	end
end

