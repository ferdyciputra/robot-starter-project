*** Settings ***
Documentation    As a User, I want to see Login Functionality working as expected, So that I can access dashboard menu in website
Resource    ../../Resources/Steps/LoginSteps.resource

*** Test Cases ***
User Login with registered username and password
    [Tags]  positive
    User is on Login Page
    User type valid username
    User type valid password
    User click button login
    User successfully login and can see dashboard menu
    Close Browser

User Login with invalid username and password
    [Tags]  negative
    User is on Login Page
    User type invalid username
    User type invalid password
    User click button login
    User can see error message      Invalid credentials
    Close Browser

User Login without filled password
    [Tags]  negative
    User is on Login Page
    User type valid username
    User click button login
    User can see error message on field password        Required
    Close Browser

User Login without filled username
    [Tags]  negative
    User is on Login Page
    User type valid password
    User click button login
    User can see error message on field username        Required
    Close Browser