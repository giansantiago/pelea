*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/Login.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/TopNav.robot


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

Successful Login
    login.navigate login page
    login.verify login page
    login.enter valid username    ${VALID_EMAIL}
    login.enter valid password    ${VALID_PASSWORD}
    login.click login button
    topnav.verify successful login

