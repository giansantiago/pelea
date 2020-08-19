*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Resources/PO/Login.robot
Resource    C:/robot-scripts/sabongeros/Resources/PO/Register.robot

*** Keywords ***
Unsuccessful Registration with Invalid Data
    [Arguments]    ${fname}    ${lname}    ${username}    ${email}    ${mobile}    ${birthdate}    ${password}    ${cpassword}
    login.navigate registration page
    register.accept terms and conditions
    register.enter first name    ${fname}
    register.enter last name    ${lname}
    register.enter username    ${username}
    register.enter email    ${email}
    register.enter mobile number    ${mobile}
    register.enter birthdate    ${birthdate}
    register.enter password    ${password}
    register.enter password confirmation    ${cpassword}
    register.click proceed to next steps

Unsuccessful Registration with Invalid OTP
    [Arguments]    ${fname}    ${lname}    ${username}    ${email}    ${mobile}    ${birthdate}    ${password}    ${cpassword}
    login.navigate registration page
    register.accept terms and conditions
    register.enter first name    ${fname}
    register.enter last name    ${lname}
    register.enter username    ${username}
    register.enter email    ${email}
    register.enter mobile number    ${mobile}
    register.enter birthdate    ${birthdate}
    register.enter password    ${password}
    register.enter password confirmation    ${cpassword}
    register.click proceed to next steps
    register.enter otp
    register.click submit otp