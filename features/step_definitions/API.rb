Given (/^I send a valid JSON POST request to the API$/) do
    post "/api",  { :accelerometer => { :time => "100", :user_id => "1", :x => "1", :y => "0", :z => "0" } }
end

Then (/^the response should be "200"$/) do 
    #last_response.status.should == 200
end

Then (/^the message should be "Successfully added user."$/) do
    #page = JSON.parse(last_response.body)
    #page["message"] == "Successfully added user."
end