Feature:
  Scenario:
    Given user is on login page
    When user type valid username
    And user type valid password
    And user clicks on submit button
    Then user should be able to login successfully
    And user should see the welcome message

  Scenario:
    Given






Feature: As a registered user I should be able to vote successfully
  Scenario: Registered user should be able to vote successfully
    Given user is on homepage
    And user is registered
    When user clicks on any radio button in community poll
    And user clicks on Vote button
    Then user should be able to vote
    And user should be able to see the voting result

  Scenario: Unregistered user should not be able to vote successfully
    Given user is on homepage
    And user is not registered
    When user clicks on any radio button (Excellent, Good, Poor, Very Good)
    And user clicks on Vote button
    Then user should not be able to vote
    And user should be able to see the error message as "Only registered users can vote."
