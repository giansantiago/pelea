*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver    C:/robot-scripts/sabongeros/Data/testdata.xlsx    sheet_name=editprofile
Resource    C:/robot-scripts/sabongeros/Resources/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/EditProfile_KW.robot

Suite Setup    common_kw.Start Edit Profile Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Edit Profile with Valid Data
    editprofile_kw.successful edit profile
    editprofile_kw.successful edit profile 2