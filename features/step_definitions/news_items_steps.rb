Given /^the rake task has been run at least once$/ do
  #system 'rake RAILS_ENV=test newswire:collect' # could use this if API key is available
  system 'rake RAILS_ENV=test newswire:test'
end