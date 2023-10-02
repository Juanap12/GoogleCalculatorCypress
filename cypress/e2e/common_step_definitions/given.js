import {Given} from "@badeball/cypress-cucumber-preprocessor"
import Home from "../../support/pages/Home"

const home = new Home()

Given('I visit Google.com', () => {
    home.visit()
})

Given('I search {string}', (searchString) => {
    home.searchInput(searchString)
})