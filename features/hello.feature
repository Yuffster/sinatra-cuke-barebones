Feature: view pages

  Scenario: Home page
    Given I am on the homepage 
    Then I should see "Hello World"
  
  Scenario: Links
    Given I am on the homepage
    When I follow "foo"
    Then I should see "bizz"