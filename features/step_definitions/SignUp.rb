Given (/^I'm on the user sign up page$/) do
	visit 'https://deliriumtracker.herokuapp.com/sign-up'
end

When (/^I add a new user$/) do
	fill_in 'Name', :with => "Tom"
	fill_in 'Email', :with => "tom@seas.upenn.edu"
	fill_in 'Password', :with => "12345678"
	fill_in 'Confirmation', :with => "12345678"
	click_button "Create my account"
end

Then (/^I should be able to create a user and route to login page$/) do
	assert page.has_css?('h1',:text =>'Log in')
end

When (/^I add a new user without name$/) do
	fill_in 'Email', :with => "tom@seas.upenn.edu"
	fill_in 'Password', :with => "12345678"
	fill_in 'Confirmation', :with => "12345678"
	click_button "Create my account"
end

Then (/^I can't create user without name$/) do
	assert page.has_content?("Name can't be blank")
end

When (/^I add a new user without email$/) do
	fill_in 'Name', :with => "Tom"
	fill_in 'Password', :with => "12345678"
	fill_in 'Confirmation', :with => "12345678"
	click_button "Create my account"
end

Then (/^I can't create user without email$/) do
	assert page.has_content?("Email can't be blank")
end

When (/^I add a new user without password$/) do
	fill_in 'Name', :with => "Tom"
	fill_in 'Email', :with => "tom@seas.upenn.edu"
	fill_in 'Confirmation', :with => "12345678"
	click_button "Create my account"
end

Then (/^I can't create user without password$/) do
	assert page.has_content?("Password can't be blank")
end

When (/^I add a new user without password and password confirmation matching$/) do
	fill_in 'Name', :with => "Tom"
	fill_in 'Email', :with => "tom@seas.upenn.edu"
	fill_in 'Password', :with => "12345678"
	fill_in 'Confirmation', :with => "12345688"
	click_button "Create my account"
end

Then (/^I can't create user without password and password confirmation matching$/) do
	assert page.has_content?("Password confirmation doesn't match Password")
end

When(/^I add a password that is too short$/) do
	fill_in 'Name', :with => "Tom"
	fill_in 'Email', :with => "tom@seas.upenn.edu"
	fill_in 'Password', :with => "1234"
	fill_in 'Confirmation', :with => "1234"
	click_button "Create my account"
end

Then(/^I can't create a user with a password that is too short$/) do
	assert page.has_content?("Password is too short")
end