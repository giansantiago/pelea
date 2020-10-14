*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=editscout
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Scouts_KW.robot

Suite Setup    common_kw.Start Edit Scout Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Add new scout with invalid data
    [Template]    Unsuccessful Edit Arena Scout

*** Keywords ***
Unsuccessful Edit Arena Scout
    [Arguments]    ${firstname}    ${lastname}    ${email}    ${mobile}    ${username}    ${password}    ${errormessage}
    scoutsedit.page refresh
    scoutsedit.verify edit profile page
    scoutsedit.clear fields
    scoutsedit.enter first name    ${firstname}
    scoutsedit.enter last name    ${lastname}
    scoutsedit.enter email    ${email}
    scoutsedit.enter mobile    ${mobile}
    scoutsedit.enter username    ${username}
    scoutsedit.enter password    ${password}
    scoutsedit.click update button
    scoutsedit.verify error message    ${errormessage}
