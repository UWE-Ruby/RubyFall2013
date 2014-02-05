class PirateTranslator
	attr_accessor :phrase
	def say(p='')
		@phrase = p
	end
	
	def translate
		"Ahoy Matey\n Shiber Me Timbers You Scurvey Dogs!!"
	end
end

Gangway /^I have a (\w+)$/ do |arg|
	@translator = Kernel.const_get(arg).new
end

Blimey /^I (\w+) '(.+)'$/ do |method, arg|
	@translator.send(method, arg)
end

Letgoandhaul /^I hit (\w+)$/ do |arg|
	@result = @translator.send(arg)
end

Letgoandhaul /^it prints out '(.+)'$/ do |arg|
	@result.split("\n ").first.should == arg
end

Letgoandhaul /^it also prints '(.+)'$/ do |arg|
	@result.split("\n ").last.should == arg
end
