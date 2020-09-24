*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot
Resource    C:/robot-scripts/sabongeros/Resources/Login_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/ChangePassword_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/EditProfile_KW.robot

*** Variables ***
${legal_age_btn}    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']
${register_link}    //div[@class='sign-up mt-18']/p/strong
${terms_btn}    //div[@class='btn-section flex-align-center mb-15']/button
${forgotpassword_link}    //a[@class='cont-sub text-btn-hover']
${profile_btn}     //div[@class='notifs']/div[2]


*** Keywords ***
Start Login Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}

Start Registration Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    wait until element is visible    ${register_link}
    click element    ${register_link}
    wait until element is visible    ${terms_btn}
    click element    ${terms_btn}

Start Forgot Password Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    click element    ${forgotpassword_link}

Start Change Password Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    login_kw.Login Start Suite
    changepassword_kw.go to change password page

Start Edit Profile Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    login_kw.Login Start Suite
    editprofile_kw.go to edit profile page

Start FAQ Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    login_kw.Login Start Suite

Start CashIn Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    ${legal_age_btn}
    click element    ${legal_age_btn}
    login_kw.Login Start Suite
    topnav.navigate to cashin page



End Suite
        close browser