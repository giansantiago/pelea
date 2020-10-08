*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot

*** Variables ***
${email_tb}    //input[@id='email']
${password_tb}    //input[@id='password']
${login_btn}    //button[@class='btn btn-primary float-right mt-45']
${remember_cb}    //input[@id='exampleCheck1']
${forgotpass_link}    //label[@class='forgot-label float-right cPointer mt-10']
#${error_message}  There was an error with your E-Mail/Password combination. Please try again.

*** Keywords ***
Navigate Login Page
    go to    ${URL.${ENVIRONMENT}}

Verify Login Page
    wait until element is visible    ${email_tb}
    wait until element is visible    ${password_tb}
    wait until element is visible    ${login_btn}
    wait until element is visible    ${remember_cb}
    wait until element is visible    ${forgotpass_link}

Enter Valid Username
    [Arguments]    ${email}
    input text    ${email_tb}    ${email}

Enter Valid Password
    [Arguments]    ${password}
    input password    ${password_tb}    ${password}

Click Login Button
    click element    ${login_btn}

Clear Login Fields
    clear element text    ${email_tb}
    clear element text    ${password_tb}

Verify Login Error Message
    [Arguments]    ${errormessage}
    wait until page contains    ${errormessage}
