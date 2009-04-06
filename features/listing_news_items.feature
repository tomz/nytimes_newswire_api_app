Feature: Listing news items
  In order to verify that the newswire_api rake task works
  As an user
  I want to see the news items grabbed by the rake task

  Scenario: News items list
    Given the rake task has been run once
    When I go to the index page
    Then I should see "Listing news_items"
    And I should see "The New York Times"
#    Then I should see a list of 20 news items
