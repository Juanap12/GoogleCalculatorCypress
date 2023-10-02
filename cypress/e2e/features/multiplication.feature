Feature: Test multiplication operation

    Background:
        Given I visit Google.com
        And I search "calculator"

    Scenario Outline: Validate multiply operation display using <quantityOfOperands> numbers
        When I create a multiply operation using "<operandsSeparatedByComma>" numbers as operands
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | expectedDisplayText |
            | 4                  | 1, 1, 1, 3               | 1 x 1 x 1 x 3       |
            | 3                  | 1.4, 3, 2                | 1.4 × 3 × 2         |

    Scenario Outline: Validate multiply operation result using <quantityOfOperands> numbers
        When I create a multiply operation using "<operandsSeparatedByComma>" numbers as operands
        And I click on equals button
        Then I expect to see "<result>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | result |
            | 6                  | 1, 1, 1, 1, 1 ,1         | 1      |
            | 3                  | 5, -1, 2                 | -10    |