*** Settings ***
Library    SeleniumLibrary
Library     ../GetWebDriver.py
Resource    ../Base.resource
Resource    ../PageObjects/LoginPage.resource
Resource    ../PageObjects/DashboardPage.resource

*** Keywords ***
User is on Login Page
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT_IN_SECOND}
    Setup WebDriver
    Go To    ${HOST}
    Maximize Browser Window

User type valid username
    Input Text    	${selector_input_username}    ${valid_username}

User type valid password
    Input Text    	${selector_input_password}    ${valid_password}

User click button login
    Click Button    ${selector_button_login}

User successfully login and can see dashboard menu
    Element Should Be Visible    ${selector_main_menu_item}

User type invalid username
    Input Text     	${selector_input_username}    ${invalid_username}

User type invalid password
    Input Text     	${selector_input_password}    ${invalid_password}

User can see error message
    [Arguments]     @{expectedMessage}
    Element Text Should Be    ${selector_error_message}    @{expectedMessage}

User can see error message on field password
    [Arguments]     @{expectedMessage}
    Element Text Should Be    ${selector_error_message_input_password}    @{expectedMessage}

User can see error message on field username
    [Arguments]     @{expectedMessage}
    Element Text Should Be    ${selector_error_message_input_username}    @{expectedMessage}