*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${profile_menu}    //button[@class='ml-10 mat-menu-trigger mat-flat-button mat-button-base']
${language_menu}    //button[@class='mat-menu-trigger mat-flat-button mat-button-base']
${notif_icon}    //button[@class='mr-15 mat-menu-trigger mat-icon-button mat-button-base']
${acctsettings_btn}    //div[@class='mat-menu-content'] /button[1]
${changepass_btn}    //div[@class='mat-menu-content'] /button[3]
${logout_btn}    //div[@class='mat-menu-content'] /button[3]

*** Keywords ***
Verify Top Nav
    wait until element is visible    ${profile_menu}
    wait until element is visible    ${language_menu}
    wait until element is visible    ${notif_icon}

Click Logout Button
    click element    ${profile_menu}
    wait until element is visible    ${logout_btn}
    click element    ${logout_btn}

Click Account Settings
    click element    ${profile_menu}
    wait until element is visible    ${acctsettings_btn}
    click element    ${acctsettings_btn}

Click Change Password
    click element    ${profile_menu}
    wait until element is visible    ${changepass_btn}
    click element    ${changepass_btn}