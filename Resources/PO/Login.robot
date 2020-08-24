*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/InputData.robot

*** Variables ***
${email_tb} =    //input[@id='email']
${password_tb} =    //input[@id='password']
${login_btn} =    //button[@class='btn btn-primary']
${error_message_div} =    //div[@class='toast-top-center toast-container']
${register_link}    //div[@class='sign-up mt-18']/p/strong


*** Keywords ***

Navigate Login Page
    go to    ${URL.${ENVIRONMENT}}

#Accept Terms
   # wait until element is visible    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']
    #click element    //div[@class='col-sm-7 flex-align-center']//button[@class='btn btn-primary']

Verify Login Page
    wait until element is visible    ${email_tb}
    wait until element is visible    ${password_tb}
    wait until element is visible    ${login_btn}

Enter Valid Username
    [Arguments]    ${email}
    input text    ${email_tb}    ${email}

Enter Valid Password
    [Arguments]    ${password}
    input password    ${password_tb}    ${password}

Click Login Button
    click element    ${login_btn}

Verify Login Error Message
    [Arguments]    ${errormessage}
    wait until element is visible    ${error_message_div}
    wait Until Element Contains    ${error_message_div}    ${errormessage}

Clear Login Fields
    clear element text    ${email_tb}
    clear element text    ${password_tb}

Navigate Registration Page
    click element    ${register_link}
