*** Settings ***
Library    SeleniumLibrary
Resource    ../Base.resource

*** Variables ***
${selector_input_username}  name:username
${selector_input_password}  name:password
${selector_button_login}  class:orangehrm-login-button
${selector_error_message}  class:oxd-alert-content-text
${selector_error_message_input_username}  class:oxd-input-group__message
${selector_error_message_input_password}  class:oxd-input-group__message
${URL_LOGIN_PAGE}   ${HOST}/auth/login

*** Keywords ***
openUrl
    Go To    ${URL_LOGIN_PAGE}

inputUsername "${valueUsername}"
    Input Text    	${selector_input_username}    ${valid_username}

inputPassword "${valuePassword}"
    Input Text    ${selector_input_password}    ${valuePassword}

clickButtonLogin
    Click Button    ${selector_button_login}

checkTextErrorMessage "${expectedMessage}"
    Element Text Should Be    ${selector_error_message}    ${expectedMessage}

checkMessageErrorFromInputUsername "${expectedMessage}"
    Element Text Should Be    ${selector_error_message_input_username}    ${expectedMessage}

checkMessageErrorFromInputPassword "${expectedMessage}"
    Element Text Should Be    ${selector_error_message_input_password}    ${expectedMessage}