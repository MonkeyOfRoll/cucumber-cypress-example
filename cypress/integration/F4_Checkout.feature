Feature: Checkout overview &Finish

  Background:
    Given a logged in standard user on the Shopping Cart Page

@sanity
Scenario: Checkout Success
  When the user clicks the Checkout button
  And they complete the your information form
    |FIRST_NAME |LAST_NAME|POSTCODE   |
    |BobFirst   |BobLast  |BobPostCode|
  And they click the Your Information Continue button
  And they click the Checkout Overview Continue button
  Then the "THANK YOU FOR YOUR ORDER" message is displayed
