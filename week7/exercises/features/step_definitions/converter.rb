Given(/^I have entered (\d+) into the converter$/) do |arg1|
 # pending # express the regexp above with the code you wish you had
 @temp 
end

Given(/^I set the type to Fahrenheit$/) do
 # pending # express the regexp above with the code you wish you had
  @type = 'Fahrenheit'
end

When(/^I press convert$/) do
  
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  #pending # express the regexp above with the code you wish you had
  class Convert
    def self
      n = (@temp - 32) * 5 / 9 
      n.round(1)
    end
  end
  

end

