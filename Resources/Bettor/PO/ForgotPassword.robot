*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${email_tbox}    //input[@id='emailOrUsername']
${send_btn}    //button[@class='btn btn-primary mt-14']

*** Keywords ***

Verify Forgot Password Page
    wait until element is visible    ${email_tbox}
    wait until element is visible    ${send_btn}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tbox}    ${email}

Click Submit Button
    click element    ${send_btn}

Verify Error Message
    wait until element is visible
    