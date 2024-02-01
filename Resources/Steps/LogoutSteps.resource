*** Settings ***
Library    SeleniumLibrary
Resource    ../Base.resource
Resource    ../PageObjects/LoginPage.resource
Resource    ../PageObjects/DashboardPage.resource

*** Keywords ***
User already in Dashboard Page
    LoginPage.openUrl
    LoginPage.inputUsername "${valid_username}"
    LoginPage.inputPassword "${valid_password}"
    LoginPage.clickButtonLogin
    DashboardPage.isMainMenuItemDisplayed

User clicks on the user dropdown
    DashboardPage.clickUserDropdown

User clicks on the logout button
    DashboardPage.clickButtonLogout

User should be redirected to the login page
    Location Should Be    ${URL_LOGIN_PAGE}