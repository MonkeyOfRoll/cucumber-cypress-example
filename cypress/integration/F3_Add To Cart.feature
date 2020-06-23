Feature: F3_Add To Cart

  Background:
    Given a logged in standard user on the SauceLabs Products Page


  @sanity
  Scenario: Add Cheapest Product to Cart From the Products page
    When the user adds a product to the cart
    |PRODUCT_NAME     |PRODUCT_POSITION |
    |Sauce Labs Onesie|2                |
    Then the Add to Cart Button will change to a Remove Button
    And The Cart badge shows the count of "1" item in the cart
    And The item is visible in the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |PRODUCT_PRICE|
      |Sauce Labs Bike Light    |3                |9.99         |


  @sanity
  Scenario: Add Costliest Product to Cart From the Products page
    When the user adds a product to the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |
      |Sauce Labs Fleece Jacket |3                |
    Then the Add to Cart Button will change to a Remove Button
    And The Cart badge shows the count of "2" item in the cart
    And The item is visible in the cart
      |PRODUCT_NAME             |PRODUCT_POSITION |PRODUCT_PRICE|
      |Sauce Labs Bike Light    |3                |9.99        |
      |Sauce Labs Bolt T-Shirt  |4                |15.99        |
