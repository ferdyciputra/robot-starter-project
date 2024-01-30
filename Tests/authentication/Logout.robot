*** Settings ***
Documentation      As a User, I want to see Logout Functionality working as expected So that I can login with another account
Resource    ../../Resources/Steps/LogoutSteps.resource

*** Variables ***
${valid_username}     Admin
${valid_password}     admin123
${BROWSER}    Chrome
${IMPLICIT_WAIT_IN_SECOND}    20

*** Test Cases ***
User logs out successfully
    [Tags]  positive
    User already in Dashboard Page
    User clicks on the user dropdown
    User clicks on the logout button
    User should be redirected to the login page