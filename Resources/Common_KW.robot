*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot
*** Variables ***

${legal_age_btn}    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']
${register_link}    //div[@class='sign-up mt-18']/p/strong
${terms_btn}    //div[@class='btn-section flex-align-center mb-15']/button


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

End Suite
        close browser