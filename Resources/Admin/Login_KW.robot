*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/Login.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/PO/TopNav.robot


*** Keywords ***
Unsuccessful Login
    [Arguments]    ${email}    ${password}    ${errormessage}
    login.verify login page
    login.enter valid username   ${email}
    login.enter valid password   ${password}
    login.click login button
    login.verify login error message    ${errormessage}
    login.clear login fields

Successful Login
    login.verify login page
    login.enter valid username   ${VALID_EMAIL}
    login.enter valid password   ${VALID_PASSWORD}
    login.click login button
    topnav.verify top nav

Successful Logout
    topnav.click logout button
    login.verify login page