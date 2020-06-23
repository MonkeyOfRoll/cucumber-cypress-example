import { Given,When,Then } from "cypress-cucumber-preprocessor/steps";

When(/^the user clicks the Checkout button$/, dataTable => {
    cy.get('.btn_action').click()
});


When(/^they complete the your information form$/, dataTable => {
    for (const {FIRST_NAME:firstNameInput , LAST_NAME: lastNameInput, POSTCODE:postcodeInput} of dataTable.hashes()) {
        cy.get('[data-test=firstName]')
            .type(firstNameInput).should('have.value', firstNameInput)
        cy.get('[data-test=lastName]')
            .type(lastNameInput).should('have.value', lastNameInput)
        cy.get('[data-test=postalCode]')
            .type(postcodeInput).should('have.value', postcodeInput)
    }

});

When(/^they click the Your Information Continue button$/, () => {

    cy.get('.btn_primary').click()
});
When(/^they click the Checkout Overview Continue button$/, () => {

    cy.get('.btn_action').click()
});


Then(/^the \"(.*?)\" message is displayed$/, (SuccessMessage) => {
    cy.get('.complete-header').should('have.text',SuccessMessage)

});
