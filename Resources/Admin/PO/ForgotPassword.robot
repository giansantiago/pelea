*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${email_tb}    //input[@id='email']
${send_btn}    //button[@class='btn customBttn btn-primary mt-14']
${page_lbl}    //p[@class='hl-2']

*** Keywords ***
Verify Forgot Password Page
    wait until element is visible    ${email_tb}
    wait until element is visible    ${send_btn}
    wait until element is visible    ${page_lbl}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tb}    ${email}

Click Send Button
    click element    ${send_btn}
