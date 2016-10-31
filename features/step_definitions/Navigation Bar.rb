Given (/^I've signed in$/) do
	visit 'https://deliriumtracker.herokuapp.com/login'
	fill_in 'Email', :with => "test@email.com"
	fill_in 'Password', :with => "password"
	click_button "Log in"
end


Then (/^the navigation bar has a log out link$/) do
	expect(page).not_to have_css('a',:text =>'Log out')
end

Then (/^the navigation bar has a dashboard link$/) do
	expect(page).not_to have_css('a',:text =>'Dashboard')
end



Then (/^the naviagation bar doesn't have a log out link$/) do
	assert page.has_no_css?('a',:text =>'Log out')
end



Then (/^the naviagation bar doesn't have a dashboard link$/) do
	assert page.has_no_css?('a',:text =>'Dashboard')
end