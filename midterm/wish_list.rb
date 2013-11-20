#- Make the rspec tests in wish_list_spec.rb pass by writing a WishList class
#   - The WishList class should:
#      - Mixin Enumerable
#      - Define each so it returns wishes as strings with their index as part of #the string
class WishList
	attr_accessor :wishes
	include Enumerable
	def initialize
		@wishes = []
	end

	def each 
		@wishes.each_index do |i| 
			yield "#{i+1}. #{@wishes[i]}"
		end
	end
end

