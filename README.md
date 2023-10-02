# Google Calculator testing on Cypress

This repository contains a Cypress project which automates the Google Calculator

## Prerequisites

- Have Node.js 18 installed: https://nodejs.org/en

## Installation

You can either download a .zip with the entire project or clone the repository using Git

Then, use your machine's terminal to navigate to the root folder of the project you just installed

Run `npm install` to install the project dependencies

## Run the tests

You could either open the Cypress server which grants you a GUI to see the different test executions or you could run tests entirely from the terminal.

### Using Cypress server

1. Open a terminal over the root folder of the project
2. Use `npm start`
3. A new Cypress GUI window should open. If it's your first time, it might show you a feed with the latest news from Cypress. Skip them and you should be redirected to a screen where you can select between "E2E Testing" and "Component Testing". Select "E2E Testing"
4. Choose a browser. For example, Chrome
5. Click on "Start E2E Testing in <browser_name>"
6. A new window on the previously selected browser should open. Under the "Specs" tab, you should see a list of the available feature files to execute. Click on any one
7. Automatically, the test scenarios from that feature file should start running. You will be able to see each step from the scenario and if the test passed or failed

### Using the terminal

1. Open a terminal over the root folder of the project
2. Use `npx cypress run --browser <desired_browser>`, where "desired_browser" is set to the browser you want to use to execute the test cases. e.g. `npx cypress run --browser chrome`. This will run all the feature files in the same run.

    - If you want to execute an specific feature file, you can pick any of the available feature files at `cypress/e2e/features` and add it to the previous command as `npx cypress run --browser <desired_browser> --spec <feature_file_path>`. e.g. `npx cypress run --browser chrome --spec "cypress/e2e/features/addition.feature"`
3. On the logs from the terminal, you will be able to see the result of each of the scenarios and if any of them fails, you will see the corresponding error.

### Common tips

- If you want to run only an specific scenario from a feature file, you can add the `@focus` tag above the definition of the desired scenario or scenario outline.

    Example:

    ```text
    @focus
    Scenario Outline: Validate add operation display using <quantityOfOperands> numbers
    ```
