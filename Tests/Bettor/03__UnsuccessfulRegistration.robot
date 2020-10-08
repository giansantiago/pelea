*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    C:/robot-scripts/sabongeros/Data/Bettor/testdata.xlsx    sheet_name=registration
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Common_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Login_KW.robot
Resource    C:/robot-scripts/sabongeros/Resources/Bettor/Registration_KW.robot
Suite Setup    common_kw.Start Registration Suite
Suite Teardown   common_kw.End Suite


*** Test Cases ***
Register with invalid data    ${email}    ${password}    ${errormessage}
    [Template]    Unsuccessful Registration with Invalid Data

*** Keywords ***
Unsuccessful Registration with Invalid Data
    [Arguments]    ${fname}    ${lname}    ${username}    ${email}    ${mobile}    ${birthdate}    ${password}    ${cpassword}    ${errormessage}
    #login.navigate registration page
    #register.accept terms and conditions
    register.verify registration page
    register.enter first name    ${fname}
    register.enter last name    ${lname}
    register.enter username    ${username}
    register.enter email    ${email}
    register.enter mobile number    ${mobile}
    register.enter birthdate    ${birthdate}
    register.enter password    ${password}
    register.enter password confirmation    ${cpassword}
    register.click proceed to next steps
    #register.click proceed to next steps
    register.verify error message    ${errormessage}
    register.clear registration fields