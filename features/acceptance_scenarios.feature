Feature: Couple Acceptance scenarios

  Scenario: At the main page there are  required elements.
    When I get to the main page
    Then I see text "Hello, Rails!"
    And  I see links
           | Log in |
           | Register |
           | My Blog  |

   Scenario: Creation user and write article.
     When I get to the main page
     And  I click "Register"
     Then I see text "Sign up"
     And  I fill in text fields with correct random data to create user:
       | email                         | user@email.com |
       | password                      | password         |
       | password_confirmation         | password         |
       | country                       | Ukraine          |
       | city                          | Lviv             |
     And I click "Sign up"
     Then I see text "Welcome! You have signed up successfully."






