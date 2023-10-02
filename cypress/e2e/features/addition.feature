Feature: Test addition operation

    Background:
        Given I visit Google.com
        And I search "calculator"

    Scenario Outline: Validate add operation display using <quantityOfOperands> numbers
        When I create an add operation using "<operandsSeparatedByComma>" numbers as operands
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | expectedDisplayText |
            | 2                  | 5, 5                     | 5 + 5               |
            | 3                  | 1.4, 3, 2                | 1.4 + 3 + 2         |
    
    Scenario Outline: Validate add operation result using <quantityOfOperands> numbers
        When I create an add operation using "<operandsSeparatedByComma>" numbers as operands
        And I click on equals button
        Then I expect to see "<result>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | result |
            | 2                  | 5, 6                     | 11     |
            | 5                  | 8, 10, 25, 1, 4          | 48     |
