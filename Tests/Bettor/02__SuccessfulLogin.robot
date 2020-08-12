*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Login_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot
Suite Setup    common_kw.Start Test
Suite Teardown    common_kw.End Test

*** Test Cases ***
Login With Valid Credentials
    login_kw.successful login
