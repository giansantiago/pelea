*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/testdata.xlsx    sheet_name=editprofile
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/EditProfile_KW.robot

Suite Setup    common_kw.Start Edit Profile Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Edit Profile with invalid data    ${email}
    [Template]    Unsuccessful Edit Profile

*** Keywords ***
Unsuccessful Edit Profile
    [Arguments]    ${firstname}    ${lastname}    ${username}    ${email}    ${mobile}    ${bday}    ${errormessage}
    editprofile.verify edit profile page elements
    editprofile.clear fields
    editprofile.enter first name    ${firstname}
    editprofile.enter last name    ${lastname}
    editprofile.enter username    ${username}
    editprofile.enter email    ${email}
    editprofile.enter mobile number    ${mobile}
    editprofile.enter birthdate    ${bday}
    editprofile.click save changes button
    editprofile.verify error message    ${errormessage}