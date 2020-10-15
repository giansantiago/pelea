*** Settings ***
Library    SeleniumLibrary
Resource    C:/robot-scripts/sabongeros/Data/Admin/InputData.robot

*** Variables ***
${fname_tb3}    //div[@class='row ml-0 mr-0'][1]/div[1] //input
${lname_tb3}    //div[@class='row ml-0 mr-0'][1]/div[2] //input
${email_tb3}    //div[@class='row ml-0 mr-0'][2]/div[1] //input
${mobile_tb3}    //div[@class='row ml-0 mr-0'][2]/div[2] //input
${username_tb3}    //div[@class='row ml-0 mr-0'][3]/div[1] //input
${password_tb3}    //div[@class='row ml-0 mr-0'][3]/div[2] //input

${choosefile_btn3}    //button[@class='customBttn btn btn-sm btn-block mat-flat-button mat-button-base']
${update_btn3}    //button[@class='btn btn-primary btn-block mat-flat-button mat-button-base ng-star-inserted']

*** Keywords ***
Verify Edit Profile Page
    wait until element is visible    ${fname_tb3}
    wait until element is visible    ${lname_tb3}
    wait until element is visible    ${email_tb3}
    wait until element is visible    ${mobile_tb3}
    wait until element is visible    ${username_tb3}
    wait until element is visible    ${password_tb3}
    wait until element is visible    ${choosefile_btn3}
    wait until element is visible    ${update_btn3}

Enter First Name
    [Arguments]    ${firstname}
    input text    ${fname_tb3}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    input text    ${lname_tb3}    ${lastname}

Enter Email
    [Arguments]    ${email}
    input text    ${email_tb3}    ${email}

Enter Mobile
    [Arguments]    ${mobile}
    input text    ${mobile_tb3}    ${mobile}

Enter Username
    [Arguments]    ${username}
    input text    ${username_tb3}    ${username}

Enter Password
    [Arguments]    ${password}
    input text    ${password_tb3}    ${password}

Select Profile Photo
    choose file    ${choosefile_btn3}    ${PHOTO}

Click Update Button
    click element    ${update_btn3}

Verify Error Message
    [Arguments]    ${errormessage}
    wait until page contains    ${errormessage}


Clear fields
    clear element text    ${fname_tb3}
    clear element text    ${lname_tb3}
    clear element text    ${email_tb3}
    clear element text    ${mobile_tb3}
    clear element text    ${username_tb3}
    clear element text    ${password_tb3}

Page Refresh
    reload page

Get Fields Text
    ${FIRSTNAME2} =   get value    ${fname_tb3}
    ${LASTNAME2} =   get value    ${lname_tb3}
    ${EMAIL2} =   get value    ${email_tb3}
    ${MOBILE2} =    get value    ${mobile_tb3}
    set suite variable   ${FIRSTNAME2}
    set suite variable   ${LASTNAME2}
    set suite variable   ${EMAIL2}
    set suite variable   ${MOBILE2}
    ${FULLNAME} =    catenate    ${FIRSTNAME2}    ${LASTNAME2}
    set suite variable   ${FULLNAME}