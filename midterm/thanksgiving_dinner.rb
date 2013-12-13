require './dinner.rb'

class ThanksgivingDinner < Dinner

	def initialize(diet)
		@diet = diet
	end

	def guests=(guests) 
		@guests = guests
	end

	def seating_chart_size
		@guests.inject(0) {|n, i| n += i.length }
	end

	def menu
		{ diet: @diet, proteins: ["Tofurkey", "Hummus"], veggies: [:ginger_carrots , :potatoes , :yams], desserts: ({:pies => [:pumpkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}) }
	end

	def whats_for_dinner
		@t_dinner.menu
	end
end