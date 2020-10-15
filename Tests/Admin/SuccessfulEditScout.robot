*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Scouts_KW.robot

Suite Setup    common_kw.Start Edit Scout Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Successful Edit Arena Scout
    scouts_kw.successful edit scout
    scouts_kw.successful edit scout 2