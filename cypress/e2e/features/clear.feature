Feature: Test clear operation

    Background:
        Given I visit Google.com
        And I search "calculator"

    Scenario Outline: Validate CE (Clear Entry) operation
        When I input the following operation: "<operation>"
        And I click on CE button
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | operation          | expectedDisplayText |
            | -5÷                | -5                  |
            | 30                 | 3                   |

    Scenario Outline: Validate AC (All Clear) operation
        When I input the following operation: "<operation>"
        And I click on equals button
        And I click on AC button
        Then I expect to see "<expectedDisplayText>" in the calculator display

        Examples:
            | operation          | expectedDisplayText |
            | -5 + 30            | 0                   |
            | 22.3               | 0                   |