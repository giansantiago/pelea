*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Login_KW.robot

*** Keywords ***
Start Login Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window

Start Dashboard Suite
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    login_kw.successful login

End Suite
        close browser