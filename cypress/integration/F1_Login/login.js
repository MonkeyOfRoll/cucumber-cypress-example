import { Given,When,Then } from "cypress-cucumber-preprocessor/steps";


Given('a user on the SauceLabs Login Page', () => {
    cy.visit('https://www.saucedemo.com')
});


When(/^they enter their Username of \"(.*?)\" into the Username field$/, (userNameInput) => {
    cy.get('[data-test=username]')
        .type(userNameInput).should('have.value', userNameInput)
});

When(/^they enter their password of \"(.*?)\" into the Password field$/, (passwordInput) => {
    cy.get('[data-test=password]')
        .type(passwordInput).should('have.value', passwordInput)
});


When('hit the Login button', () => {
    cy.get('.btn_action').click()
});



Then(`they will be presented with the Inventory Range page`, () => {
    cy.get('.product_label').should('have.text','Products')

});
