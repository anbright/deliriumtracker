Feature: User logout option
		 As a Provider who is logged in
		 I want to log out and see a confirmation for it

	Scenario: Immidiate Logout
		Given I have made a new account
			And I have just logged in
		When I click the logout button in the navbar
		Then I should be able to successfully logout and see a confirmation

	Scenario: Logout from Help page
		Given I have made a new account
			And I'm looking at the Help page after logging in
		When I click the logout button in the navbar
		Then I should be able to successfully logout and see a confirmation
		
	Scenario: Login link from Logout page
		Given I have made a new account
			And I have just logged in
			And I logged out
			And I have received a confirmation of logout
		When I click the link to log back in
		Then I should be taken to the login page