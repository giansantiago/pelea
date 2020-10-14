*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=changepassword
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/ChangePassword_KW.robot

Suite Setup    common_kw.Start Change Password Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Change Password with invalid data
    [Template]    Unsuccessful Change Password

*** Keywords ***
Unsuccessful Change Password
    [Arguments]    ${newpassword}    ${confirmpassword}    ${errormessage}
    changepassword.verify change password page
    changepassword.enter new password    ${newpassword}
    changepassword.enter confirm password    ${confirmpassword}
    changepassword.click save button
    changepassword.verify error message    ${errormessage}
    #changepassword.clear fields
    changepassword.page refresh
    changepassword.page refresh
