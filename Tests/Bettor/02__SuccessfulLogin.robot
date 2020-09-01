*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Login_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot

Suite Setup    common_kw.Start Login Suite
Suite Teardown    common_kw.End Suite

*** Test Cases ***
Login With Valid Credentials
    login_kw.successful login
    run keyword if test failed    login_kw.successful login 2
