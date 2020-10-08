*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/TopNav.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/Settings.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/PO/ChangePassword.robot
#Resource    C:/robot-scripts/sabongeros/Data/InputData.robot


*** Keywords ***
Go to Change Password Page
    topnav.navigate to settings page
    settings.navigate to change password page

Unsuccessful Change Password
    [Arguments]    ${newpassword}    ${confirmpassword}    ${errormessage}
    changepassword.enter new password    ${newpassword}
    changepassword.enter confirm password    ${confirmpassword}
    changepassword.click save changes button
    changepassword.verify error message    ${errormessage}
    changepassword.clear password fields

Successful Change Password
    changepassword.enter new password    ${NEWPASS2}
    changepassword.enter confirm password    ${CONFIRMPASS2}
    changepassword.click save changes button
    changepassword.verify successful notification


Successful Change Password 2
    changepassword.clear password fields
    changepassword.enter new password    ${NEWPASS1}
    changepassword.enter confirm password    ${CONFIRMPASS1}
    changepassword.click save changes button
    changepassword.verify successful notification