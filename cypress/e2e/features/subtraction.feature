Feature: Test subtraction operation

    Background:
        Given I visit Google.com
        And I search "calculator"

    Scenario Outline: Validate subtract operation display using <quantityOfOperands> numbers
        When I create a subtract operation using "<operandsSeparatedByComma>" numbers as operands
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | expectedDisplayText |
            | 2                  | 8, 3                     | 8 - 3               |
            | 4                  | 3.4, 1, 2                | 3.4 - 1 - 2         |
    
    Scenario Outline: Validate add operation result using <quantityOfOperands> numbers
        When I create a subtract operation using "<operandsSeparatedByComma>" numbers as operands
        And I click on equals button
        Then I expect to see "<result>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | result |
            | 2                  | 5, 6                     | -1     |
            | 3                  | 20.5, 10, 5.5            | 5      |