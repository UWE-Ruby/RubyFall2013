# magic_nine_ball_spec.rb
require 'magicnineball'

describe MagicNineBall do
	it "makes sure magicnineball is not nil" do 
	@magicnineball = MagicNineBall.new
	@magicnineball.nil?
	end
end