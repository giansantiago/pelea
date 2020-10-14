*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/ChangePassword.robot
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot


*** Keywords ***
Unsuccessful Change Password
    [Arguments]    ${newpassword}    ${confirmpassword}    ${errormessage}
    changepassword.verify change password page
    changepassword.enter new password    ${newpassword}
    changepassword.enter confirm password    ${confirmpassword}
    changepassword.click save button
    changepassword.verify error message    ${errormessage}
    changepassword.clear fields

Successful Change Password
    changepassword.page refresh
    changepassword.enter new password    ${NEWPASS2}
    changepassword.enter confirm password    ${CONFIRMPASS2}
    changepassword.click save button
    changepassword.verify successful notification


Successful Change Password 2
    changepassword.clear fields
    changepassword.enter new password    ${NEWPASS1}
    changepassword.enter confirm password    ${CONFIRMPASS1}
    changepassword.click save button
    changepassword.verify successful notification