*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=login
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Login.robot
Suite Setup    common_kw.Start Login Suite
Suite Teardown   common_kw.End Suite


*** Test Cases ***

Login with invalid credentials    ${email}    ${password}    ${errormessage}
    [Template]    Unsuccessful Login

*** Keywords ***
Unsuccessful Login
    [Arguments]    ${email}    ${password}    ${errormessage}
    #login.navigate login page
    login.verify login page
    login.enter valid username   ${email}
    login.enter valid password   ${password}
    login.click login button
    login.verify login error message    ${errormessage}
    login.clear login fields
