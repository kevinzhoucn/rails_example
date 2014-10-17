Feature: See Message
  Scenario: See one use's messages title
    Given there is a User
    And the User has posted the message with title "this is my message title" and body "this is my message body"
    When I visit the page from Post index
    Then I should see title "this is my message title"

  Scenario: See one use's messages body
    Given there is a User
    And the User has posted the message with title "this is my message title" and body "this is my message body"
    When I visit the page from single Post path page
    Then I should see body "this is my message body"