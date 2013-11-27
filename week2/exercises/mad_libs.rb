#!/usr/bin/ruby


############################
# Grab input from the user
############################
print "Please enter a noun: "
noun = gets.chomp

print "Please enter an adjective: "
adjective = gets.chomp

print "Please enter a past tense action verb: "
verb_past_tense = gets.chomp

print "What does the #{noun} say? "
says = gets.chomp


############################
# Print story
############################
story = "The #{adjective} #{noun} #{verb_past_tense} past the graveyard and says #{says}"
puts story
