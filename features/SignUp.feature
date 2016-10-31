Feature: User sign up page
		 As a Provider/User
		 I want to sign up with my name, email, and password
	
	
	Scenario: Add user
		Given I'm on the user sign up page
		When I add a new user
		Then I should be able to create a user and route to login page

	Scenario: Add user without name
		Given I'm on the user sign up page
		When I add a new user without name
		Then I can't create user without name
		
	Scenario: Add user without email
		Given I'm on the user sign up page
		When I add a new user without email
		Then I can't create user without email

	Scenario: Add user without password
		Given I'm on the user sign up page
		When I add a new user without password
		Then I can't create user without password
		
	Scenario: Add user without password and password confirmation matching
		Given I'm on the user sign up page
		When I add a new user without password and password confirmation matching
		Then I can't create user without password and password confirmation matching
		
	Scenario: Add user with short password
		Given I'm on the user sign up page
		When I add a password that is too short
		Then I can't create a user with a password that is too short