import {When} from "@badeball/cypress-cucumber-preprocessor"
import Calculator from "../../../support/pages/Calculator"

const calculator = new Calculator()

When('I create an add operation using {string} numbers as operands', (operandsSeparatedByComma) => {
    operandsSeparatedByComma.replace(/-/g, "−");
    operandsArray = operandsSeparatedByComma.split(',').map(x => x.trim())
    operandsArray.forEach((number, index) =>{
        Array.from(number).forEach(character => {
            calculator.clickButtonThatContainsGivenText(character)
        })
        if (index != (operandsArray.length - 1)) {
            calculator.clickButtonThatContainsGivenText('+')
        }
    })
})