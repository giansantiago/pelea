*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/ChangePassword_KW.robot

Suite Setup    common_kw.Start Change Password Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Change Password with Valid Data
    changepassword_kw.successful change password
    changepassword_kw.successful change password 2