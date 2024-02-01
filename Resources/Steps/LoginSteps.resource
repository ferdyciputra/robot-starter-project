*** Settings ***
Resource    ../Base.resource
Resource    ../PageObjects/LoginPage.resource
Resource    ../PageObjects/DashboardPage.resource

*** Keywords ***
User is on Login Page
    LoginPage.openUrl

User type valid username
    LoginPage.inputUsername "${valid_username}"

User type valid password
    LoginPage.inputPassword "${valid_password}"

User click button login
    LoginPage.clickButtonLogin

User successfully login and can see dashboard menu
    DashboardPage.isMainMenuItemDisplayed

User type invalid username
    LoginPage.inputUsername "${invalid_username}"

User type invalid password
    LoginPage.inputPassword "${invalid_password}"

User can see error message "${expectedMessage}"
    LoginPage.checkTextErrorMessage "${expectedMessage}"
    
User can see error message "${expectedMessage}" on field username
    LoginPage.checkMessageErrorFromInputUsername "${expectedMessage}"

User can see error message "${expectedMessage}" on field password
    LoginPage.checkMessageErrorFromInputPassword "${expectedMessage}"