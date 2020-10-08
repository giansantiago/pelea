*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=login
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Dashboard_KW.robot
Suite Setup    common_kw.Start Dashboard Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Navigate to Cash-in Requests
    dashboard_kw.navigate to cash-in requests page

Navigate to Cash-out Requests
    dashboard_kw.navigate to cash-out requests page

Navigate to Event Fights Page
    dashboard_kw.navigate to event fights page

Navigate to Arenas Page
    dashboard_kw.navigate to arenas page