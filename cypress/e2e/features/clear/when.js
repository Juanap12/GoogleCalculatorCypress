import {When} from "@badeball/cypress-cucumber-preprocessor"
import Calculator from "../../../support/pages/Calculator"

const calculator = new Calculator()

When('I click on CE button', () => {
    calculator.clickButtonThatContainsGivenText('CE')
})

When('I click on AC button', () => {
    calculator.clickButtonThatContainsGivenText('AC')
})