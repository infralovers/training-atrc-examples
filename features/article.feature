Feature: Article

  Scenario: Creating a new Article
    Given I have a healthy API
    When I create an article with the title "Ruby is awesome"
    Then I should receive a success response
    And I should receive "Ruby is awesome" in the response body

  Scenario: Listing all articles
    Given I have a healthy API
    When I list all available articles
    Then I should receive a success response
    And I should receive "Ruby is awesome" in the response body
