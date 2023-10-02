Feature: Test division operation

    Background:
        Given I visit Google.com
        And I search "calculator"

    Scenario Outline: Validate division operation display using <quantityOfOperands> numbers
        When I create a division operation using "<operandsSeparatedByComma>" numbers as operands
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | expectedDisplayText |
            | 2                  | 25, 5                    | 25 ÷ 5              |
            | 3                  | 9, 3, 1.5                | 9 ÷ 3 ÷ 1.5         |

    Scenario Outline: Validate division operation result using <quantityOfOperands> numbers
        When I create a division operation using "<operandsSeparatedByComma>" numbers as operands
        And I click on equals button
        Then I expect to see "<result>" in the calculator display

        Examples:
            | quantityOfOperands | operandsSeparatedByComma | result   |
            | 2                  | 13, 0                    | Infinity |
            | 3                  | 18, 6, 1.5               | 2        |