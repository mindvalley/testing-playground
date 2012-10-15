Feature: List of users
  In order to see all existing users
  As and admin
  I want to see each user's name
  
  
  @javascript
  Scenario: The user's index page lists all users
    Given a user with email "lala@tes.com" and first name "Marky" and last name "Mark" exists
    And I go to the list of users
    Then I should see "Marky Mark"
