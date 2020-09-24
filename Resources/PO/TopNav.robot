*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${profile_menu}     //div[@class='profile-header move-right flex-align-center ng-star-inserted'] //div[4]
${profile_btn}     //div[@class='notifs']/div[2]
${settings_btn}    //div[@class='notifs']/div[3]
${rules_btn}    //div[@class='header-nav flex-align-center ng-star-inserted']/div[3]
${faq_btn}    //div[@class='header-nav flex-align-center ng-star-inserted']/div[4]
${cashin_btn}    //div[@class='header-nav flex-align-center ng-star-inserted']/div[5]
${cashout_btn}    //div[@class='header-nav flex-align-center ng-star-inserted']/div[6]

*** Keywords ***
Verify Successful Login
    wait until element is visible    ${profile_menu}

Navigate to Settings Page
    click element    ${profile_menu}
    wait until element is visible    ${settings_btn}
    click element    ${settings_btn}

Navigate to Profile Page
    click element    ${profile_menu}
    wait until element is visible    ${profile_btn}
    click element    ${profile_btn}

Navigate to Rules Page
    wait until element is visible      ${rules_btn}
    click element    ${rules_btn}

Navigate to FAQ Page
    wait until element is visible      ${faq_btn}
    click element    ${faq_btn}

Navigate to CashIn Page
    wait until element is visible      ${cashin_btn}
    click element    ${cashin_btn}