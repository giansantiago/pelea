*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/Login.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/ForgotPassword.robot

*** Keywords ***
Unsuccessful Forgot Password
    [Arguments]    ${email}
    forgotpassword.enter email    ${email}
    forgotpassword.click submit button

