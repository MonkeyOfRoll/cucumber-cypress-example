import { Given,When,Then } from "cypress-cucumber-preprocessor/steps";




When(/^they select the Sorting dropdown$/, (userNameInput) => {
    cy.get('.product_sort_container')
});

Then(/^they will be presented with a list of sorting options:$/, dataTable => {
    for (const {ORDER:index , OPTION_TEXT: optionText} of dataTable.hashes()) {
        cy.get('.product_sort_container > option').then(($option) => {
            const dropdownOptionLabel = $option.get(index).text

            expect(dropdownOptionLabel).to.eql(optionText)
        })

    }
});

When(/^they select the \"(.*?)\" Option$/, (sortOptionSelect) => {
    cy.get('.product_sort_container').select(sortOptionSelect)
});

Then(/^the Products will be sorted as follows;$/, dataTable => {
    for (const {ORDER:order , PRODUCT_NAME: productName, PRICE:price} of dataTable.hashes()) {
        cy.get(':nth-child('+order+') > .pricebar > .inventory_item_price').should('have.text',price)
        cy.get('.inventory_list > :nth-child('+order+')').find('.inventory_item_name').should('have.text',productName)
    }
});



