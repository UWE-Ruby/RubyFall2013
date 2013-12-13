#!/usr/bin/env ruby

class MagicNineBall

	print "What is your question "
	question = gets.chomp
	array = ["Yes, in due time.",
	"My sources say no.",
	"Definitely not.",
	"Yes.",
	"You will have to wait.",
	"I have my doubts.",
	"Outlook so so.",
	"Looks good to me!",
	"Who knows?",
	"Looking good!", 
	"Probably.",
	"Are you kidding?",
	"Go for it!",
	"Don't bet on it.", 
	"Forget about it."]
	@array = array
	puts @array.sample
end