Feature: F3_Add To Cart

  Background:
    Given a logged in standard user on the SauceLabs Products Page

  @focus
  Scenario: Add to Cart From the Products page
    When the user adds a product to the cart
    Then the Add to Cart Button will change to a Remove Button
    And The Cart badge shows the count of 1 item in the cart

  @focus
  Scenario: Add to Cart From the Products page
