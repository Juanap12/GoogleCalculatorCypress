import {When} from "@badeball/cypress-cucumber-preprocessor"
import Calculator from "../../../support/pages/Calculator"

const calculator = new Calculator()

When('I create a multiply operation using {string} numbers as operands', (operandsSeparatedByComma) => {
    operandsSeparatedByComma = operandsSeparatedByComma.replace(/-/g, "−");
    operandsArray = operandsSeparatedByComma.split(',').map(x => x.trim())
    operandsArray.forEach((number, index) =>{
        Array.from(number).forEach(character => {
            cy.log(character)
            calculator.clickButtonThatContainsGivenText(character)
        })
        if (index != (operandsArray.length - 1)) {
            calculator.clickButtonThatContainsGivenText('×')
        }
    })
})