*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver    C:/robot-scripts/sabongeros/Data/Bettor/testdata.xlsx    sheet_name=editprofile
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/EditProfile_KW.robot

Suite Setup    common_kw.Start Edit Profile Suite
Suite Teardown   common_kw.End Suite

*** Test Cases ***
Edit Profile with Valid Data
    editprofile_kw.successful edit profile
    editprofile_kw.successful edit profile 2