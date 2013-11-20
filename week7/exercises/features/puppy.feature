Feature: Puppies are very cute and everyone wants one
	In order to make everyone happy
	As a puppy class programmer
	I want to give everyone a cute virtual puppy

Scenario: The puppy is being pet
	Given we have a puppy
	  And its name is Fred
	When we pet the puppy
	Then the puppy wags its tail

Scenario: The puppy needs to go out
	Given we have a puppy
	  And its name is Bella
	When we ring the bell
	  And it wags its tail
	Then we must take it out
	  And then it will not pee on the floor
