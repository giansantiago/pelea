*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=addscout
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Scouts_KW.robot

Suite Setup    common_kw.Start Add New Scout Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Add new scout with invalid data
    [Template]    Unsuccessful Add New Arena Scout

*** Keywords ***
Unsuccessful Add New Arena Scout
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${mobile}    ${username}    ${password}    ${errormessage}
    scoutsadd.enter first name    ${firstname}
    scoutsadd.enter last name    ${lastname}
    scoutsadd.enter email    ${email}
    scoutsadd.enter mobile    ${mobile}
    scoutsadd.enter username    ${username}
    scoutsadd.enter password    ${password}
    scoutsadd.click add button
    scoutsadd.verify error message    ${errormessage}
    scoutsadd.clear fields
    scoutsadd.page refresh