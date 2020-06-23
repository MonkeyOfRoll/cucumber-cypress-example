Feature: F1_Login

  @sanity
  Scenario Outline: Login Success with valid credentials and password
    Given a user on the SauceLabs Login Page
    When they enter their Username of "<VALID_USER>" into the Username field
      And they enter their password of "<VALID_PASSWORD>" into the Password field
      And hit the Login button
    Then they will be presented with the Inventory Range page

    Examples:
    |VALID_USER   |VALID_PASSWORD |
    |standard_user|secret_sauce   |


  @focus
  Scenario: Login failure message - valid credentials but submit with INVALID password
    Given a <standard user>
    When they enter an invalid <password>
      And hit the Enter/submit button
    Then they will be presented with an error message

  @focus
  Scenario: Login failure message - valid Username but submit with NO password
    Given a <standard user>
    When they enter no password
      And hit the Enter/submit button
    Then they will be presented with an error message

  @focus
  Scenario: Login failure message - Submit Empty Form Error Message
    Given a user on the SauceLabs Login Page
    When hit the Enter/submit button
    Then they will be presented with an error message
