Feature: Listing news items in XML
  In order to allow API access to news items
  As an user
  I want to see the news items in XML format

  Scenario: News items in XML
    Given the rake task has been run at least once
    When I go to the news items XML url
    Then I should see news items in XML format
