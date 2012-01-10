Feature: Tweets
	So that I can post stuff to the wall
	As a user
	I want the tweet facility
	
	Scenario: User inputs a valid tweet
		Given I visit homepage
		When I input "This is a valid tweet!"
		And I click to submit
		Then I should see "This is a valid tweet!" posted
		
	Scenario: User inputs invalid tweet
		Given I visit homepage
		When I input "This is an awfully long tweet and will be rejected after all, we all hate reading long texts, or so we might as well assume now considering how everything is moving towards it now. We even have a shortmail mailing system with character limitation! It's weird!"
		And I click to submit
		Then I should see "This is a valid tweet!" posted