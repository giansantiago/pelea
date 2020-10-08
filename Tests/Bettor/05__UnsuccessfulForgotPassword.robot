*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Bettor/testdata.xlsx    sheet_name=forgotpassword
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/ForgotPassword_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Login_KW.robot

Suite Setup    common_kw.Start Forgot Password Suite
Suite Teardown   common_kw.End Suite


*** Test Cases ***
Forgot Password with invalid data    ${email}
    [Template]    Unsuccessful Forgot Password

*** Keywords ***
Unsuccessful Forgot Password
    [Arguments]    ${email}
    forgotpassword.enter email    ${email}
    forgotpassword.click submit button