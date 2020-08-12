*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot
*** Variables ***


*** Keywords ***
Start Test
    open browser    ${URL.${ENVIRONMENT}}     ${BROWSER}
    maximize browser window
    wait until element is visible    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']
    click element    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']

End Test
        close browser