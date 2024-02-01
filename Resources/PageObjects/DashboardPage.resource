*** Settings ***
Library    SeleniumLibrary
Resource    ../Base.resource

*** Variables ***
${selector_main_menu_item}  class:oxd-main-menu
${selector_user_dropdown}  class:oxd-userdropdown-tab
${selector_user_dropdown_logout}  //a[contains(text(),'Logout')]

*** Keywords ***
isMainMenuItemDisplayed
    Element Should Be Visible    ${selector_main_menu_item}

clickUserDropdown
    Click Element    ${selector_user_dropdown}

clickButtonLogout
    Click Element    ${selector_user_dropdown_logout}