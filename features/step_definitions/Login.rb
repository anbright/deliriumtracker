Given (/^I have signed up$/) do
	visit 'https://deliriumtracker.herokuapp.com/sign-up'
	fill_in 'Name', :with => "Tom"
	fill_in 'Email', :with => "Tom@seas.upenn.edu"
	fill_in 'Password', :with =>  "12345678"
	fill_in 'Confirmation', :with =>  "12345678"
	click_button "Create my account"
end

Given (/^I'm in the user login page$/) do
	visit 'https://deliriumtracker.herokuapp.com/login'
end

When (/^I fill the email and password fields and login$/) do
	fill_in 'Email', :with => "Tom@seas.upenn.edu"
	fill_in 'Password', :with => "12345678"
	click_button "Log in"
end

Then (/^I should be able to sign in successfully and route to my dashboard$/) do
	assert page.has_content?("test")
end


When (/^I fill the email field with an invalid email$/) do
	fill_in 'Email', :with => "Tom22@seas.upenn.edu"
	fill_in 'Password', :with => "12345678"
	click_button "Log in"
end

Then (/^I can't login$/) do
	assert page.should_have_css('.flashnotice', text: "Invalid email or password")
end

When (/^I fill the password field with an invalid password$/) do
	fill_in 'Email', :with => "Tom@seas.upenn.edu"
	fill_in 'Password', :with => "12345622"
	click_button "Log in"
end

