Feature: Converting metric
	In order to pack for London
	As a traveler
	I want to be told the Celsius temperature in Fahrenheit

Scenario:
	Given I have entered 0 into the converter
	And I select Celsius
	When I press convert
	Then the result should be 32.0 on the screen
	
Scenario:
	Given I have entered 21 into the converter
	And I select Celsius
	When I press convert
	Then the result should be 69.8 on the screen
	
