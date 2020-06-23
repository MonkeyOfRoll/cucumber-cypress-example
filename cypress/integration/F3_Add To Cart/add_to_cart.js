import {Given,When,Then} from "cypress-cucumber-preprocessor/steps";



Given(/^the cart is empty$/, () => {
    cy.get('.shopping_cart_link').click()
    cy.get(':nth-child(3) > .cart_item_label > .item_pricebar > .btn_secondary').click()
    cy.get(':nth-child(4) > .cart_item_label > .item_pricebar > .btn_secondary').click()
    cy.get('cart_footer > .btn_secondary')

});

When(/^the user adds a product to the cart$/, dataTable => {
    for (const {PRODUCT_POSITION:position , PRODUCT_NAME: productName, PRICE:price} of dataTable.hashes()) {
        cy.get(':nth-child('+ position +') > .pricebar > .btn_primary').click()
    }
});

Then(/^the Add to Cart Button will change to a Remove Button$/, () => {

});

Then(/^The Cart badge shows the count of \"(.*?)\" item in the cart$/, (basketCount) => {
    cy.get('.fa-layers-counter').should('have.text',basketCount)

});

Then(/^The item is visible in the cart$/, dataTable => {
    for (const {PRODUCT_POSITION:position , PRODUCT_NAME: productName, PRODUCT_PRICE:price} of dataTable.hashes()) {
        const shoppingListItemIndex = parseInt(position)-3
        cy.log ('maths result: '+ shoppingListItemIndex)
        cy.get('.shopping_cart_link').click()

        cy.get('#item_' + shoppingListItemIndex + '_title_link > .inventory_item_name').should('have.text',productName)
        cy.get('.cart_list > :nth-child('+ position +') > .cart_item_label > .item_pricebar > .inventory_item_price').should('have.text',price)
    }

});

