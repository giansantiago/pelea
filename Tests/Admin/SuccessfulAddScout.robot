*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
#Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=addscout
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Scouts_KW.robot

Suite Setup    common_kw.Start Add New Scout Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Successful Add New Arena Scout
    scouts_kw.successful add new scout