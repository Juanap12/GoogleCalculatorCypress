class Calculator {

    locators = {
        genericCalculatorButton: '.card-section div[role="button"]:visible',
        calculatorDisplay: '#cwos'
    }

    constructor() {
        this.url = "/search?q=calculator"
    }

    visit() {
        cy.visit("/")
    }

    clickButtonThatContainsGivenText(text) {
        cy.get(this.locators.genericCalculatorButton).contains(text).click()
    }

    getCalculatorDisplayCurrentText() {
        return cy.get(this.locators.calculatorDisplay).invoke('text')
    }
}

module.exports = Calculator