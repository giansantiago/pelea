*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/CashIn_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Suite Setup    common_kw.Start Cashin Suite
Suite Teardown   common_kw.End Suite


*** Test Cases ***
Unsuccessful Cash In
    cashin_kw.request cash in with below minimum required amount

Successful Cash In
    cashin_kw.request cash in with complete valid details