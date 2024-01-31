*** Settings ***
Documentation    As a User, I want to see Login Functionality working as expected, So that I can access dashboard menu in website
Resource    ../../Resources/Steps/LoginSteps.resource

*** Test Cases ***
User Login with registered username and password
    [Tags]  positive
    Given User is on Login Page
    When User type valid username
    And User type valid password
    And User click button login
    Then User successfully login and can see dashboard menu
    Close Browser

User Login with invalid username and password
    [Tags]  negative
    Given User is on Login Page
    When User type invalid username
    And User type invalid password
    And User click button login
    Then User can see error message      Invalid credentials
    Close Browser

User Login without filled password
    [Tags]  negative
    Given User is on Login Page
    When User type valid username
    And User click button login
    Then User can see error message on field password        Required
    Close Browser

User Login without filled username
    [Tags]  negative
    Given User is on Login Page
    When User type valid password
    And User click button login
    Then User can see error message on field username        Required
    Close Browser
    Close Browser