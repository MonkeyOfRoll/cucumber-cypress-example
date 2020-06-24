Feature: F3_Add To Cart

  Background:
    Given a logged in standard user on the SauceLabs Products Page


  @sanity
  Scenario: User Adds Cheapest Product to Cart From the Products page
    When they select the Sorting dropdown
    And they select the "hilo" Option
    And the user adds a product to the cart
    |PRODUCT_NAME     |PRODUCT_POSITION |
    |Sauce Labs Onesie|6                |
    Then the Add to Cart Button will change to a Remove Button
    And The Cart badge shows the count of "1" item in the cart
    And The item is visible in the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |PRODUCT_PRICE|
      |Sauce Labs Onesie        |3                |7.99         |


  @sanity
  Scenario: User Adds Costliest Product to Cart From the Products page
    When they select the Sorting dropdown
    And they select the "hilo" Option
    And the user adds a product to the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |
      |Sauce Labs Fleece Jacket |1                |
    Then the Add to Cart Button will change to a Remove Button
    And The Cart badge shows the count of "2" item in the cart
    And The item is visible in the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |PRODUCT_PRICE|
      |Sauce Labs Onesie        |3                |7.99         |
      |Sauce Labs Fleece Jacket |4                |49.99        |
