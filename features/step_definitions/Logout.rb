Given (/^I have just logged in$/) do
	visit 'https://deliriumtracker.herokuapp.com'
	fill_in 'Email', :with => "test@email.com"
	fill_in 'Password', :with =>  "password"
	click_button "Log in"
end

When (/^I click the logout button in the navbar$/) do
	click_link('Log out')
end

Then (/^I should be able to successfully logout and see a confirmation$/) do
	assert page.has_content?("You have successfully logged out!")
end

Given (/^I'm looking at the Help page after logging in$/) do
	visit 'https://deliriumtracker.herokuapp.com'
	fill_in 'Email', :with => "test@email.com"
	fill_in 'Password', :with =>  "password"
	click_button "Log in"
	click_on 'Help'
end

Given (/^I have received a confirmation of logout$/) do
	visit 'https://deliriumtracker.herokuapp.com'
	fill_in 'Email', :with => "test@email.com"
	fill_in 'Password', :with =>  "password"
	click_button "Log in"
	click_on 'Log out'
end

When (/^I click the link to log back in$/) do
	find('.href', :text => 'here').click
end

Then (/^I should be taken to the login page$/) do
	assert page.has_css?('h1',:text=>'Log in')
end