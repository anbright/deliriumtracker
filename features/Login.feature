Feature: User login page
		 As a Provider
		 I want to login with my email and password

	Scenario: Login with email and password
		Given I have signed up
			And I'm in the user login page
		When I fill the email and password fields and login
		Then I should be able to sign in successfully and route to my dashboard

	Scenario: Login with incorrect email
		Given I'm in the user login page
		When I fill the email field with an invalid email
		Then I can't login
		
	Scenario: Login with incorrect password
		Given I'm in the user login page
		When I fill the password field with an invalid password
		Then I can't login