*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=editprofile
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/EditProfile_KW.robot

Suite Setup    common_kw.Start Edit Profile Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Edit Profile with invalid data    ${email}
    [Template]    Unsuccessful Edit Profile

*** Keywords ***
Unsuccessful Edit Profile
    [Arguments]    ${firstname}    ${lastname}    ${username}    ${email}    ${mobile}    ${address}    ${errormessage}
    editprofile.page refresh
    editprofile.verify edit profile page
    editprofile.clear fields
    editprofile.enter first name    ${firstname}
    editprofile.enter last name    ${lastname}
    editprofile.enter username    ${username}
    editprofile.enter email    ${email}
    editprofile.enter mobile number    ${mobile}
    editprofile.enter address    ${address}
    editprofile.click save button
    editprofile.verify error message    ${errormessage}