*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${profile_menu}    //div[@class='main text-btn-hover flex-align-center mat-menu-trigger']
${settings_btn}  //div[@class='notifs']/div[3]

*** Keywords ***
Verify Successful Login
    wait until element is visible    ${profile_menu}

Navigate to Settings Page
    click element    ${profile_menu}
    wait until element is visible    ${settings_btn}
    click element    ${settings_btn}