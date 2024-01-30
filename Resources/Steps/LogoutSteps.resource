*** Settings ***
Library    SeleniumLibrary
Resource    LoginSteps.resource

*** Keywords ***
User already in Dashboard Page
    User is on Login Page
    User type valid username
    User type valid password
    User click button login
    User successfully login and can see dashboard menu

User clicks on the user dropdown
    Click Element    ${selector_user_dropdown}

User clicks on the logout button
    Click Element    ${selector_user_dropdown_logout}

User should be redirected to the login page
    Location Should Be    ${HOST}