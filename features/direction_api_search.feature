Feature: Search routes between two places

  As a google map api demo user
  I want to know the instructions between the start address and end address

  Scenario: Seach routes with vaild query
    Given I navigate to the demo page
    When I enter "钟楼 西安" and "鼓楼 西安"
    And I click the button
    Then the detailed start and end addresses should be displayed
    And the distance between two addresses should be displayed
    And the time spent by driving should be displayed
    And the drive instructions should be displayed

  Scenario: Error messages displayed with invalid query
    Given I navigate to the demo page
    When I enter "" and "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    And I click the button
    Then error messages should be displayed 

  Scenario: Message displayed with invalid query
    Given I navigate to the demo page
    When I enter "xxx" and "yyy"
    And I click the button
    Then an appriprate message should be displayed 
