import {Then} from "@badeball/cypress-cucumber-preprocessor"
import Calculator from "../../support/pages/Calculator"

const calculator = new Calculator()

Then('I expect to see {string} in the calculator display', (expectedValue) => {
    expectedValue = expectedValue.replace(/x/g, "×");
    calculator.getCalculatorDisplayCurrentText().should('equal', expectedValue)
})