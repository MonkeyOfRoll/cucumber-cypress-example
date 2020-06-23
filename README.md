# cucumber-cypress-example
This is the basic version the tests - it; 
- has been treated more like a spike to discover cypress with cucumber
- provides simple tests for login, inventory and checkout
- Provides examples of commonly used Gherkin/Cucumber step data-driving (Scenario Outline, DataTables)
- provides a tagged run for the requested user journey
- provides examples of other behaviours that could be tested, represented as Scenarios in the Feature files
 
#### To Do
- docker?
- ESLint
- tidy up duplicated step definitions
- make each feature able to run without interdependency on other features run / success (i.e. clear cart) 
- add checks for the checkout summary page - all that data should be verified. Posibly better to organise the tests as a "thin slice" happy flow feature

The app under test also seems to have some fairly odd implementations of inventory objects within the inventory page and the shopping cart page which makes it trickier (on my first pass) to build robust test step definitions. I would expect a unique identifier for a product (i.e. SKU and then information about it in the child or grandchild elements etc., like product name, price, description). elements. I would be questioning whether this is an optimal (maintainable) implementation for the front-end app, as well as questioning how the correct product will get dispatched from the warehouse!) 




### Running the Tests
* To run only the requested journey in headless mode, input `./node_modules/.bin/cypress-tags run -e TAGS='@sanity'` to the terminal
* Otherwise, features can be run independently through the standard Cypress test runner  `yarn run cypress open` Except;
    * F3_Add To Cart - needs cart clearing at start
 
 

### Useful Links

- [Gherkin Reference](https://cucumber.io/docs/gherkin/reference/)
- [Cypress API Reference](https://docs.cypress.io/api/api/table-of-contents.html)
- [cypress-cucumber-preprocessor](https://github.com/TheBrainFamily/cypress-cucumber-preprocessor)
