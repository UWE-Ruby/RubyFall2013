Given(/^I have entered (\d+) into the converter$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  @converter = Converter.new(arg1)
end

Given(/^I set the type to Fahrenheit$/) do
  #pending # express the regexp above with the code you wish you had
  @converter.type = "Celcius"
end

When(/^I press convert$/) do
  @result = @converter.convert
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  @result.should eq "#{args1}.#{args2}"
end

Given(/^we have a puppy$/) do
 # pending # express the regexp above with the code you wish you had
end

Given(/^its name is Fred$/) do
  #pending # express the regexp above with the code you wish you had
end

When(/^we pet the puppy$/) do
  #pending # express the regexp above with the code you wish you had
end

Then(/^the puppy wags its tail$/) do
  #pending # express the regexp above with the code you wish you had
end

Given(/^its name is Bella$/) do
  #pending # express the regexp above with the code you wish you had
end

When(/^we ring the bell$/) do
  #pending # express the regexp above with the code you wish you had
end

When(/^it wags its tail$/) do
  #pending # express the regexp above with the code you wish you had
end

Then(/^we must take it out$/) do
  #pending # express the regexp above with the code you wish you had
end

Then(/^then it will not pee on the floor$/) do
  #pending # express the regexp above with the code you wish you had
end
