class Home {

    locators = {
        searchBar: 'form textarea'
    }

    constructor() {
        this.url = "/"
    }

    visit() {
        cy.visit("/")
    }

    searchInput(text) {
        return cy.get(this.locators.searchBar).type(text).type('{enter}')
    }
}

module.exports = Home