import {When} from "@badeball/cypress-cucumber-preprocessor"
import Calculator from "../../support/pages/Calculator"

const calculator = new Calculator()

When('I click on equals button', () => {
    calculator.clickButtonThatContainsGivenText('=')
})

When('I input the following operation: {string}', (operation) => {
    operation = operation.replace(/-/g, "−").replace(/x/g, "×").replace(/\s/g, "");
    Array.from(operation).forEach(character =>{
        calculator.clickButtonThatContainsGivenText(character)
    })
})