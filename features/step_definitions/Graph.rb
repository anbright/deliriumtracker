Given (/^I've added a patient$/) do
    #FactoryGirl.create :patient
    #visit 'users/1/add/1'
end

When (/^I visit the patient page$/) do
    #visit 'patients/1'
end

Then (/^there should be a graph for each day of data$/) do
   #text = css('p',:text)[0]
   #num = text[10]
   #assert num == css('script',:type=>"text/javascript").size
end

Then (/^the graphs should display 24 hours of data$/) do
    #t = css('div',:class=>"data_range")
    # start= t.css('p',:text)[0]
    #stop = t.css('p',:text)[1]
    #d1 = start[6:end]
    #d2 = stop[4:end]
    #assert (d2-d1) ==24
end