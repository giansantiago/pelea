*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=login
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Login_KW.robot
Suite Setup    common_kw.Start Login Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Successful Login
    login_kw.successful login

Successful Logout
    login_kw.successful logout