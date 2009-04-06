Given /^the rake task has been run at least once$/ do
  #system 'rake RAILS_ENV=test newswire:collect' # could use this if API key is available
  system 'rake RAILS_ENV=test newswire:test'
end

Then /^I should see news items in XML format$/ do
  document = REXML::Document.new(response.body)
  document.get_elements("news-items/news-item").size.should == NewsItem.all.size
end

