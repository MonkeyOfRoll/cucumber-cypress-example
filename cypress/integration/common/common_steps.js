import {Given} from "cypress-cucumber-preprocessor/steps";

Given('a logged in standard user on the SauceLabs Products Page', () => {
    cy.visit('https://www.saucedemo.com')
    cy.get('[data-test=username]')
        .type('standard_user').should('have.value', 'standard_user')
    cy.get('[data-test=password]')
        .type('secret_sauce').should('have.value', 'secret_sauce')
    cy.get('.btn_action').click()
    cy.get('.product_label').should('have.text','Products')


});
Given('a logged in standard user on the Shopping Cart Page', () => {
    cy.visit('https://www.saucedemo.com')
    cy.get('[data-test=username]')
        .type('standard_user').should('have.value', 'standard_user')
    cy.get('[data-test=password]')
        .type('secret_sauce').should('have.value', 'secret_sauce')
    cy.get('.btn_action').click()
    cy.get('.product_label').should('have.text','Products')
    cy.get('.shopping_cart_link').click()
    cy.get('.subheader').should('have.text','Your Cart')
});
