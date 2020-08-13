*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/testdata.xlsx    sheet_name=Sheet1
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Login_KW.robot
Suite Setup    common_kw.Start Test
Suite Teardown   common_kw.End Test
#Test Template    Unsuccessful Login

*** Test Cases ***

Login with invalid credentials    ${email}    ${password}    ${errormessage}
    [Documentation]    First pull
    [Template]    Unsuccessful Login

*** Keywords ***
Unsuccessful Login
    [Arguments]    ${email}    ${password}    ${errormessage}
    login.navigate login page
    login.verify login page
    login.enter valid username   ${email}
    login.enter valid password   ${password}
    login.click login button
    login.click login button
    login.verify login error message    ${errormessage}
    login.clear login fields
