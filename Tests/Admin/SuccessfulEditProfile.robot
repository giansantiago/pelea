*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver    C:/robot-scripts/sabongeros/Data/Admin/testdata.xlsx    sheet_name=editprofile
Resource    C:/robot-scripts/sabongeros/Resources/Admin/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Admin/EditProfile_KW.robot

Suite Setup    common_kw.Start Edit Profile Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Successful Edit Profile
    editprofile_kw.successful edit profile
    editprofile_kw.successful edit profile 2