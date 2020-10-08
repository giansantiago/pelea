*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/Login.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/ForgotPassword.robot

*** Keywords ***
Unsuccessful Forgot Password
    [Arguments]    ${email}
    forgotpassword.enter email    ${email}
    forgotpassword.click submit button

