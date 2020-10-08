*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${dashboard_menu}    //div[@class='mat-list-item-content'] //span[.//text() = 'Dashboard']

*** Keywords ***
Navigate to Dashboard
    wait until element is visible    ${dashboard_menu}
    click element    ${dashboard_menu}