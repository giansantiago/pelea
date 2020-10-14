*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${dashboard_menu}    //div[@class='mat-list-item-content'] //span[.//text() = 'Dashboard']
${bettors_menu}    //div[@class='mat-list-item-content'] //span[.//text() = 'Bettors']
${scouts_menu}    //a[@href='/admin/arenascout']


*** Keywords ***
Navigate to Dashboard
    wait until element is visible    ${dashboard_menu}
    click element    ${dashboard_menu}

Navigate to Bettors Page
    wait until element is visible    ${bettors_menu}
    click element    ${bettors_menu}

Navigate to Scouts Page
    wait until element is visible    ${scouts_menu}
    click element    ${scouts_menu}