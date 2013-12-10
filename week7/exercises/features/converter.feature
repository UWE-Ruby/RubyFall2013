Feature: Converting metric
	In order to talk about the weather back home
	As a traveler in London
	I want to convert a Fahrenheit temperature to Celsius

Scenario:
	Given I have entered 32 into the converter
	And I set the type to Fahrenheit
	When I press convert
	Then the result returned should be 0.0
	
Scenario:
	Given I have entered 75 into the converter
	And I set the type to Fahrenheit
	When I press convert
	Then the result returned should be 23.9
	
