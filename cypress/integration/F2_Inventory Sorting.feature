Feature: F2_Inventory Sorting

  Background:
    Given a logged in standard user on the SauceLabs Products Page


  @focus
  Scenario: Sorting Dropdown Contents
    When they select the Sorting dropdown
    Then they will be presented with a list of sorting options:
      |ORDER|OPTION_TEXT        |
      |0    |Name (A to Z)      |
      |1    |Name (Z to A)      |
      |2    |Price (low to high)|
      |3    |Price (high to low)|

  @focus
  Scenario: Sorting Products by price - high to low
    When they select the Sorting dropdown
      And they select the "hilo" Option
    Then the Products will be sorted as follows;
      |ORDER|PRODUCT_NAME                     |PRICE  |
      |1    |Sauce Labs Fleece Jacket         |$49.99 |
      |2    |Sauce Labs Backpack              |$29.99 |
      |3    |Test.allTheThings() T-Shirt (Red)|$15.99 |
      |4    |Sauce Labs Bolt T-Shirt          |$15.99 |
      |5    |Sauce Labs Bike Light            |$9.99  |
      |6    |Sauce Labs Onesie                |$7.99  |

  @focus
  Scenario: Product Sorting default
    Given something
    When I do something
    Then Something happens
