*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Bettor/testdata.xlsx    sheet_name=changepassword
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/ChangePassword_KW.robot

Suite Setup    common_kw.Start Change Password Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Change Password with invalid data    ${email}
    [Template]    Unsuccessful Change Password

*** Keywords ***
Unsuccessful Change Password
    [Arguments]    ${newpassword}    ${confirmpassword}    ${errormessage}
    changepassword.enter new password    ${newpassword}
    changepassword.enter confirm password    ${confirmpassword}
    changepassword.click save changes button
    changepassword.verify error message    ${errormessage}
    changepassword.clear password fields

