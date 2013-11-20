Given /^I have entered (\d+) into the converter$/ do |arg1|
	@converter = Converter.new(arg1)
end

Given /^I select Celsius$/ do
	@converter.type = "Celsius"
end

When /^I press convert$/ do
	@result = @converter.convert
end

Then /^the result should be (\d+)\.(\d+) on the screen$/ do |arg1, arg2|
	@result.should eq "#{arg1}.#{arg2}".to_f
end
