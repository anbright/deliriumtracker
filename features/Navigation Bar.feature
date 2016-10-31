Feature: Navigation bar
		 As a User
		 I want to navigate across various pages of the platform

	Scenario: Log out and dashboard links appears after log in
		Given I have signed up
			And I have just logged in
		Then the navigation bar has a log out link
		Then the navigation bar has a dashboard link

	Scenario: Log out and dashboard links don't appear on login page
		Given I'm in the user login page
		Then the naviagation bar doesn't have a log out link
		Then the naviagation bar doesn't have a dashboard link
		
	Scenario: Log out and dashboard links don't appear on sign up page
		Given I'm on the user sign up page
		Then the naviagation bar doesn't have a log out link
		Then the naviagation bar doesn't have a dashboard link